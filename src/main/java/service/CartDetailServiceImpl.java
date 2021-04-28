package service;

import dao.CartDetailsMapper;
import domain.CartDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartDetailServiceImpl implements CartDetailService {
    @Autowired
    public CartDetailsMapper cartDetailsMapper;

    //根据购物车Id查询购物车详情
    public List<CartDetails> getCartDetailByCartId(int cartId) {
        return cartDetailsMapper.getCartDetailByCartId(cartId);
    }

    //添加购物车详情
    public void addCartDetails(CartDetails cartDetails){
        cartDetailsMapper.addCartDetails(cartDetails);
    }

    //删除购物车详情
    public void deleteCartDetails(int cartDetailsId){
        cartDetailsMapper.deleteCartDetails(cartDetailsId);
    }

    //根据购物车详情ID获得购物车详情
    public CartDetails getCartDetailById(int cartDetailsId){
        return cartDetailsMapper.getCartDetailById(cartDetailsId);
    }
}
