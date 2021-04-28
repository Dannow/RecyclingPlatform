package controller;

import domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ShowIndexController {
    @Autowired
    public FirstSortService firstSortService;
    @Autowired
    public SecondSortService secondSortService;
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public OrderService orderService;
    @Autowired
    public NewsService newsService;
    @Autowired
    public CartService cartService;

    //获得分类
    @RequestMapping("/showIndex")
    public String showIndex(Model model, HttpSession session){
        //查找数据
        List<FirstSort> firstSort = firstSortService.getAllFirstSort();
        List<SecondSort> secondSort = secondSortService.getAllSecondSort();
        List<Goods> goods1 = goodsService.getGoodsByFirstSortId(1).subList(1,9);
        List<Goods> goods2 = goodsService.getGoodsByFirstSortId(2);
        List<Goods> goods3 = goodsService.getGoodsByFirstSortId(3);
        List<OrderDetails> orderHistory = orderService.getOrderDetailsTen();
        List<News> news = newsService.getAllNews().subList(1,6);

        //把数据放进model中
        model.addAttribute("secondSort",secondSort);
        model.addAttribute("firstSort",firstSort);
        model.addAttribute("goods1",goods1);
        model.addAttribute("goods2",goods2);
        model.addAttribute("goods3",goods3);
        model.addAttribute("orderHistory",orderHistory);
        model.addAttribute("news",news);

        //加入购物车数据
        User user = (User) session.getAttribute("user");
        if(user != null){
            List<CartDetails> cartGoods = cartService.getCartGoodsByUserId(user.getUserId());
            session.setAttribute("cartGoods",cartGoods);
        }

        return "/index_true.jsp";
    }
}
