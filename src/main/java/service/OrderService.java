package service;

import domain.Order;
import domain.OrderDetails;

import java.util.List;

public interface OrderService {
    //根据用户ID查对应的订单
    public Order getOrderById(int orderId);

    //查询所有的订单
    public List<Order> getAllOrder();

    //添加订单
    public void addOrder(Order order);

    //根据订单时间查询前3个订单
    public List<OrderDetails> getOrderDetailsTen();

    //根据用户ID查询对应的订单
    public List<OrderDetails> getOrderByUserId(int userId);

    //根据用户ID查询对应的已完成的订单
    public List<OrderDetails> getFinishOrderByUserId(int userId);

    //根据订单ID删除订单
    public void deleteOrderByOrderId(int orderId);

    //获得所有的订单和详情
    public List<Order> getAllOrderAndDetail();

    //更新回收字段
    public void updateRecycleState(int orderId);

    //获得所有已回收订单和详情
    public List<Order> getAllFinisOrderAndDetail();

    //更新订单总金额
    public void updateOrderPrice(int orderId,int orderPrice);

    //获取所有未支付订单
    public List<Order> getAllNoPayOrderAndDetail();

    //获取所有支付订单
    public List<Order> getAllPayOrderAndDetail();

    //更新回收字段
    public void updatePayState(int orderId);

    //根据订单ID查对应的订单
    public Order getOrderById2(int orderId);
}
