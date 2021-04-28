package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import domain.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.FirstSortService;
import service.GoodsService;

import java.util.List;

@Controller
public class GoodsController {
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public FirstSortService firstSortService;
    //显示所有商品
    @RequestMapping("/showAllGoods/{pageNum}")
    public String showAllGoods(@PathVariable int pageNum, Model model){
        //设置每页显示8条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,8);
        //获取全部数据
        List<Goods> goodsList=goodsService.getAllGoods();
        //显示页码条，最多显示5个页码
        PageInfo<Goods> goodsPageInfo = new PageInfo<Goods>(goodsList, 5);
        //把foodPageInfo保存到model中，用foodPageInfo.getList()取出数据
        model.addAttribute("goodsPageInfo",goodsPageInfo);

        return "/goods_true.jsp";
    }

    //显示一级分类下的商品
    @RequestMapping("/showFirstSortGoods1/{pageNum}")
    public String showFirstSortGoods1(@PathVariable int pageNum,Model model){
        //设置每页显示3条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,8);
        //获取全部数据
        List<Goods> FirstSortGoods = goodsService.getGoodsByFirstSortId(1);
        //显示页码条，最多显示5个页码
        PageInfo<Goods> goodsPageInfo1 = new PageInfo<Goods>(FirstSortGoods, 5);
        //把foodPageInfo保存到model中，用foodPageInfo.getList()取出数据
        model.addAttribute("goodsPageInfo1",goodsPageInfo1);

        return "/goods_true1.jsp";
    }

    //显示一级分类下的商品
    @RequestMapping("/showFirstSortGoods2/{pageNum}")
    public String showFirstSortGoods2(@PathVariable int pageNum,Model model){
        //设置每页显示3条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,8);
        //获取全部数据
        List<Goods> FirstSortGoods = goodsService.getGoodsByFirstSortId(2);
        //显示页码条，最多显示5个页码
        PageInfo<Goods> goodsPageInfo2 = new PageInfo<Goods>(FirstSortGoods, 5);
        //把foodPageInfo保存到model中，用foodPageInfo.getList()取出数据
        model.addAttribute("goodsPageInfo2",goodsPageInfo2);

        return "/goods_true2.jsp";
    }

    //显示一级分类下的商品
    @RequestMapping("/showFirstSortGoods3/{pageNum}")
    public String showFirstSortGoods3(@PathVariable int pageNum,Model model){
        //设置每页显示3条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,8);
        //获取全部数据
        List<Goods> FirstSortGoods = goodsService.getGoodsByFirstSortId(3);
        //显示页码条，最多显示5个页码
        PageInfo<Goods> goodsPageInfo3 = new PageInfo<Goods>(FirstSortGoods, 5);
        //把foodPageInfo保存到model中，用foodPageInfo.getList()取出数据
        model.addAttribute("goodsPageInfo3",goodsPageInfo3);

        return "/goods_true3.jsp";
    }
}
