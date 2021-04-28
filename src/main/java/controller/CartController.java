package controller;

import domain.Cart;
import domain.CartDetails;
import domain.Goods;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CartDetailService;
import service.CartService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CartController {
    @Autowired
    public CartService cartService;
    @Autowired
    public CartDetailService cartDetailService;
    @Autowired
    public CartDetails cartDetails;
    @Autowired
    public CartDetails cartDetails2;

    //下单的前一步时，把商品放入购物车
    @RequestMapping("/addGoodsToCart")
    public String addGoodsToCart(HttpSession session, Model model){
        //从session中获取数据
        Goods cartGoods = (Goods) session.getAttribute("orderGoods");
        int predictWeight=(Integer) session.getAttribute("predictWeight");
        User user= (User) session.getAttribute("user");

        //获取用户购物车
        Cart cart = cartService.getCartByUserId(user.getUserId());
        //如果用户没有购物车创建购物车
        if(cart == null){
            cartService.insertCart(user.getUserId(),0);
            cart = cartService.getCartByUserId(user.getUserId());
        }
        /*保存购物车*/
        cart.setUser(user);
        //保存商品
        cart.getCartGoods().add(cartGoods);
        //判断用户是否已经有购物车
//        if(cart == null){
//            cart.setCartMoney(predictWeight * cartGoods.getGoodsPrice());
//            cartService.addCart(cart);
//        }
        //else{
            cart.setCartMoney(cart.getCartMoney()+predictWeight * cartGoods.getGoodsPrice());
            cartService.updateCartMoney(cart);
        //}
        //保存购物车详情
        for (Goods g : cart.getCartGoods()) {
            cartDetails.setCart(cart);
            cartDetails.setGoods(g);
            cartDetails.setAmount(predictWeight);
            cartDetailService.addCartDetails(cartDetails);
        }

        //把所有购物车详情加入购物车中
        List<CartDetails> cartDetail = cartService.getCartGoodsByUserId(user.getUserId());
        session.setAttribute("cartGoods",cartDetail);
        for(CartDetails c:cartDetail){
            cart.getCartDetailsList().add(c);
        }


        //数据放入session中
        session.setAttribute("cart",cart);
        return "redirect:/pay.jsp";
    }

    //在购物车处结账
    @RequestMapping("payInCart")
    public String payInCart(HttpSession session){
        User user= (User) session.getAttribute("user");
        //获取用户购物车
        Cart cart = cartService.getCartByUserId(user.getUserId());
        //把所有购物车详情加入购物车中
        List<CartDetails> cartDetail = cartService.getCartGoodsByUserId(user.getUserId());
        for(CartDetails c:cartDetail){
            cart.getCartDetailsList().add(c);
        }
        //数据放入session中
        session.setAttribute("cart",cart);
        return "redirect:/pay.jsp";
    }

    //商品加入购物车
    @ResponseBody
    @RequestMapping(value = "/addGoodsToCartDirect", produces = "text/plain;charset=UTF-8")
    public String addGoodsToCartDirect(HttpSession session){
        //从session中获取数据
        Goods cartGoods = (Goods) session.getAttribute("orderGoods");
        int predictWeight=(Integer) session.getAttribute("predictWeight");
        User user= (User) session.getAttribute("user");

        //获取用户购物车
        Cart cart = cartService.getCartByUserId(user.getUserId());
        if(cart == null){
            cartService.insertCart(user.getUserId(),0);
            cart = cartService.getCartByUserId(user.getUserId());
        }

        /*保存购物车*/
        cart.setUser(user);
        //保存商品
        cart.getCartGoods().add(cartGoods);
        cart.setCartMoney(cart.getCartMoney()+predictWeight * cartGoods.getGoodsPrice());
        cartService.updateCartMoney(cart);

        //保存购物车详情
        cartDetails2.setCart(cart);
        cartDetails2.setGoods(cartGoods);
        cartDetails2.setAmount(predictWeight);
        cartDetailService.addCartDetails(cartDetails2);
        cart.getCartDetailsList().add(cartDetails2);

        //更新数量
        List<CartDetails> cartDetailList = cartDetailService.getCartDetailByCartId(cart.getCartId());
        int sum=cartDetailList.size()+1;

        //更新整个购物车
        if(user != null){
            List<CartDetails> cartGoods2 = cartService.getCartGoodsByUserId(user.getUserId());
            session.setAttribute("cartGoods",cartGoods2);
        }

        //返回数据
        return sum+","+cart.getCartMoney()+","+cartDetails2.getCartDetailsId()+","+cartGoods.getGoodsPicture()+","+cartGoods.getGoodsName()+","+predictWeight * cartGoods.getGoodsPrice();
    }

    //删除购物车商品
    @ResponseBody
    @RequestMapping("/deleteCartGoods")
    public String deleteCartGoods(int cartDetailsId,HttpSession session){
        User user = (User) session.getAttribute("user");
        Cart cart = cartService.getCartByUserId(user.getUserId());
        CartDetails cartDetails = cartDetailService.getCartDetailById(cartDetailsId);

        //更新总金额
        int money=cart.getCartMoney()-cartDetails.getGoods().getGoodsPrice()*cartDetails.getAmount();
        cart.setCartMoney(money);
        cartService.updateCartMoney(cart);

        //更新数量
        List<CartDetails> cartDetailList = cartDetailService.getCartDetailByCartId(cart.getCartId());
        int sum=cartDetailList.size()-1;

        //删除购物车商品
        cartDetailService.deleteCartDetails(cartDetailsId);

        //更新整个购物车
        if(user != null){
            List<CartDetails> cartGoods = cartService.getCartGoodsByUserId(user.getUserId());
            session.setAttribute("cartGoods",cartGoods);
        }

        //返回给前端
        return "{\"sum\":"+sum+",\"money\":"+money+"}";
    }

}
