package controller;

import domain.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.GoodsService;

import javax.servlet.http.HttpSession;

@Controller
public class GoodsDetailController {
    @Autowired
    public GoodsService goodsService;

    //展示商品详情
    @RequestMapping("/showGoodsDetail/{goodsId}")
    public String showGoodsDetail(@PathVariable int goodsId, Model model){
        Goods goods = goodsService.getGoodsById(goodsId);
        model.addAttribute("goods",goods);
        return "/goodsdetail.jsp";
    }

    //显示总价钱
    @RequestMapping("/showGoodsMoney/{goodsId}/{predictWeight}")
    public String showGoodsMoney(@PathVariable int goodsId, @PathVariable int predictWeight, HttpSession session){
        Goods orderGoods = goodsService.getGoodsById(goodsId);
        session.setAttribute("orderGoods",orderGoods);

        session.setAttribute("predictWeight",predictWeight);

        return "redirect:/order.jsp";
    }
}
