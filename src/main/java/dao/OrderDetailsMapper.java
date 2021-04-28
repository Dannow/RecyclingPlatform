package dao;

import domain.OrderDetails;

import java.util.List;

public interface OrderDetailsMapper {
    //根据订单Id查询订单详情
    public List<OrderDetails> getOrderDetailByOrderId(int orderId);

    //添加订单详情
    public void addOrderDetails(OrderDetails orderDetails);

    //更新实际重量
    public void updateRealWeight(OrderDetails orderDetails);
}
