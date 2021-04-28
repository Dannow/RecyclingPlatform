package dao;

import domain.Goods;

import java.util.List;

public interface GoodsMapper {
    //查询所有商品
    public List<Goods> getAllGoods();

    //根据Id查询商品
    public Goods getGoodsById(int goodsId);

    //增加商品
    public void addGoods(Goods goods);

    //删除商品
    public void deleteGoods(int goodsId);

    //更新商品
    public void updateGoods(Goods goods);

    //根据二级类别查找商品
    public List<Goods> getGoodsBySecondSortId(int secondSortId);

    //搜索
    public List<Goods> searchGoods(String goodsName);

    //根据一级类别查找商品
    public List<Goods> getGoodsByFirstSortId(int firstSortId);

    //查询所有商品和二级分类
    public List<Goods> getAllGoodsAndSecondSort();

    //根据购物车查找商品(不用)
    public List<Goods> getGoodsByCartId(int cartId);
}
