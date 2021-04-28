package service;

import dao.CartMapper;
import domain.Cart;
import domain.CartDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService{
    @Autowired
    public CartMapper cartMapper;

    //根据用户Id查询购物车
    public Cart getCartByUserId(int userId) {
        return cartMapper.getCartByUserId(userId);
    }

    //添加购物车
    public void addCart(Cart cart){
        cartMapper.addCart(cart);
    }

    //更新购物车的总金额
    public void updateCartMoney(Cart cart){
        cartMapper.updateCartMoney(cart);
    }

    //根据用户ID查询购物车商品
    public List<CartDetails> getCartGoodsByUserId(int userId){
        return cartMapper.getCartGoodsByUserId(userId);
    }

    //给用户一个购物车
    public void insertCart(int userId,int cartMoney){
        cartMapper.insertCart(userId,cartMoney);
    }
}
