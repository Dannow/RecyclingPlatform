package service;

import dao.GoodsMapper;
import document.Recycle;
import domain.Goods;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.RecyleRepository;

import java.io.IOException;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService{
    @Autowired
    public GoodsMapper goodsMapper;
    @Autowired
    public RecyleRepository recyleRepository;

    //查询所有商品
    public List<Goods> getAllGoods() {
        return goodsMapper.getAllGoods();
    }

    //根据Id查询商品
    public Goods getGoodsById(int goodsId) {
        return goodsMapper.getGoodsById(goodsId);
    }

    //增加商品
    public void addGoods(Goods goods) {
        //数据库添加商品
        goodsMapper.addGoods(goods);

        //solr添加或更新商品
        Recycle recycle = new Recycle();
        recycle.setGoodsId(goods.getGoodsId());
        recycle.setGoodsName(goods.getGoodsName());
        recycle.setGoodsPicture(goods.getGoodsPicture());
        recycle.setGoodsPrice(goods.getGoodsPrice());

        try {
            recyleRepository.addOrUpdRecyle(recycle);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
    }

    //删除商品
    public void deleteGoods(int goodsId) {
        //数据库删除商品
        goodsMapper.deleteGoods(goodsId);

        //solr删除商品
        try {
            recyleRepository.deleteRecyle(goodsId);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
    }

    //更新商品
    public void updateGoods(Goods goods) {
        goodsMapper.updateGoods(goods);
    }

    //根据二级类别查找商品
    public List<Goods> getGoodsBySecondSortId(int secondSortId){
        return goodsMapper.getGoodsBySecondSortId(secondSortId);
    }

    //搜索
    public List<Goods> searchGoods(String goodsName){
        return goodsMapper.searchGoods(goodsName);
    }

    //根据一级类别查找商品
    public List<Goods> getGoodsByFirstSortId(int firstSortId){
        return goodsMapper.getGoodsByFirstSortId(firstSortId);
    }

    //根据购物车查找商品
    public List<Goods> getGoodsByCartId(int cartId){
        return goodsMapper.getGoodsByCartId(cartId);
    }

    //查询所有商品和二级分类
    public List<Goods> getAllGoodsAndSecondSort(){
        return goodsMapper.getAllGoodsAndSecondSort();
    }
}
