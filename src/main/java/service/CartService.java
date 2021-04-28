package service;

import domain.Cart;
import domain.CartDetails;

import java.util.List;

public interface CartService {
    //根据用户Id查询购物车
    public Cart getCartByUserId(int userId);

    //添加购物车
    public void addCart(Cart cart);

    //更新购物车的总金额
    public void updateCartMoney(Cart cart);

    //根据用户ID查询购物车商品
    public List<CartDetails> getCartGoodsByUserId(int userId);

    //给用户一个购物车
    public void insertCart(int userId, int cartMoney);
}
