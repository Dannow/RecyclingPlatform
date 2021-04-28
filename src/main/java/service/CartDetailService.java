package service;

import domain.CartDetails;

import java.util.List;

public interface CartDetailService {
    //根据购物车Id查询购物车详情
    public List<CartDetails> getCartDetailByCartId(int cartId);

    //添加购物车详情
    public void addCartDetails(CartDetails cartDetails);

    //删除购物车详情
    public void deleteCartDetails(int cartDetailsId);

    //根据购物车详情ID获得购物车详情
    public CartDetails getCartDetailById(int cartDetailsId);
}
