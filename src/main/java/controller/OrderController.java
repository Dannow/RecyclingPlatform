package controller;

import domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.*;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    public OrderService orderService;
    @Autowired
    public CartService cartService;
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public OderDetailsService oderDetailsService;
    @Autowired
    public CartDetailService cartDetailService;

    //下单
    @RequestMapping("/placeOrder")
    @ResponseBody
    public String placeOrder(Order order, String consumerName, String stime,HttpSession session) throws ParseException {
        int i = 0;
        User user = (User) session.getAttribute("user");

        //获取当前时间
        Long nowTime=System.currentTimeMillis();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String orderTime= sdf.format(new Date(nowTime));

        //当不填地址时，获得地址
        if(consumerName ==""){
            order.setConsumerAddress(user.getAddress());
            order.setConsumerName(user.getUserName());
            order.setConsumerPhone(user.getUserPhone());
        }

        Cart cart = (Cart) session.getAttribute("cart");

        //保存订单
        order.setUser(user);
        order.setOrderPrice(cart.getCartMoney());
        order.setOrderTime(orderTime);
        //保存商品
        List<Goods> cartGoods = goodsService.getGoodsByCartId(cart.getCartId());
        for(Goods goods:cartGoods){
            order.getOrderGoods().add(goods);
        }
        orderService.addOrder(order);
        //保存订单详情
        for(Goods goods:order.getOrderGoods()){
            OrderDetails orderDetails=new OrderDetails();
            orderDetails.setOrder(order);
            orderDetails.setGoods(goods);
            orderDetails.setPredictWeight(cart.getCartDetailsList().get(i++).getAmount());
            order.getOrderDetailsList().add(orderDetails);
            oderDetailsService.addOrderDetails(orderDetails);
        }

        //把购物车金额设置为0
        cart.setCartMoney(0);
        cartService.updateCartMoney(cart);

        //删除已经加入订单的购物车商品
        List<CartDetails> cartDetailsList = cart.getCartDetailsList();
        for(CartDetails cartDetails:cartDetailsList){
            cartDetailService.deleteCartDetails(cartDetails.getCartDetailsId());
        }
        return "1";
    }

    //查询用户交易中订单
    @RequestMapping("/getUserOrder")
    public String getUserOrder(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        List<OrderDetails> userOrderDetails = orderService.getOrderByUserId(user.getUserId());
        model.addAttribute("userOrderDetails",userOrderDetails);
        return "userIndex/userhandleorder.jsp";
    }

    //删除订单
    @RequestMapping("/deleteUserOrder/{orderId}")
    public String deleteUserOrder(@PathVariable int orderId){
        orderService.deleteOrderByOrderId(orderId);
        return "/getUserOrder";
    }

    //查询用户已完成订单
    @RequestMapping("/getUserFinishOrder")
    public String getUserFinishOrder(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        List<OrderDetails> userFinishOrderDetails = orderService.getFinishOrderByUserId(user.getUserId());
        model.addAttribute("userFinishOrderDetails",userFinishOrderDetails);
        return "/userIndex/userfinishorder.jsp";
    }
}
