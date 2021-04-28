package service;

import dao.OrderDetailsMapper;
import domain.OrderDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OderDetailsServiceImpl implements OderDetailsService {
    @Autowired
    public OrderDetailsMapper orderDetailsMapper;

    //根据订单Id查询订单详情
    public List<OrderDetails> getOrderDetailByOrderId(int orderId) {
        return orderDetailsMapper.getOrderDetailByOrderId(orderId);
    }

    //添加订单详情
    public void addOrderDetails(OrderDetails orderDetails){
        orderDetailsMapper.addOrderDetails(orderDetails);
    }

    //更新实际重量
    public void updateRealWeight(OrderDetails orderDetails){
        orderDetailsMapper.updateRealWeight(orderDetails);
    }
}
