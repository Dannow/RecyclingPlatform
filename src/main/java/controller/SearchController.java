package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import document.Recycle;
import domain.Goods;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.RecyleRepository;
import service.GoodsService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public RecyleRepository recyleRepository;

    //搜索提示
    @RequestMapping("/search")
    @ResponseBody
    public List<String> search(@RequestParam String searchContent){
        //获取模糊查找数据
        List<String> list=new ArrayList<String>();
        List<Goods> goodsList = goodsService.searchGoods(searchContent);
        if(searchContent == ""){//当没有匹配数据时
            list.add("false");
            return  list;
        }
        else {//当有匹配数据时
            for(Goods g:goodsList){
                list.add(g.getGoodsName());
            }
            return list;
        }
    }

    //搜索商品
    @RequestMapping("/searchGoods/{pageNum}")
    public String searchGood(@PathVariable int pageNum, String gname, Model model) throws IOException, SolrServerException {
        //设置每页显示3条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,8);
        //List<Goods> goodsList = goodsService.searchGoods(gname);
        List<Recycle> goodsList = recyleRepository.getRecyle(gname);
        //显示页码条，最多显示5个页码
        PageInfo<Recycle> searchGoodsList = new PageInfo<Recycle>(goodsList, 5);
        //把foodPageInfo保存到model中，用foodPageInfo.getList()取出数据
        model.addAttribute("searchGoodsList",searchGoodsList);
        return "/search.jsp";
    }
}
