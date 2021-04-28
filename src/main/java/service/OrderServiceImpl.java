package service;

import dao.OrderMapper;
import domain.Order;
import domain.OrderDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    public OrderMapper orderMapper;

    //根据用户ID查对应的订单
    public Order getOrderById(int orderId) {
        return orderMapper.getOrderById(orderId);
    }

    //查询所有的订单
    public List<Order> getAllOrder() {
        return orderMapper.getAllOrder();
    }

    //根据订单时间查询前3个订单
    public List<OrderDetails> getOrderDetailsTen(){
        return orderMapper.getOrderDetailsTen();
    }

    //添加订单
    public void addOrder(Order order){
        orderMapper.addOrder(order);
    }

    //根据用户ID查询对应的订单
    public List<OrderDetails> getOrderByUserId(int userId){
        return orderMapper.getOrderByUserId(userId);
    }

    //根据用户ID查询对应的已完成的订单
    public List<OrderDetails> getFinishOrderByUserId(int userId){
        return orderMapper.getFinishOrderByUserId(userId);
    }

    //根据订单ID删除订单
    public void deleteOrderByOrderId(int orderId){
        orderMapper.deleteOrderByOrderId(orderId);
    }

    //获得所有的订单和详情
    public List<Order> getAllOrderAndDetail(){
        return orderMapper.getAllOrderAndDetail();
    }

    //更新回收字段
    public void updateRecycleState(int orderId){
        orderMapper.updateRecycleState(orderId);
    }

    //获得所有已回收订单和详情
    public List<Order> getAllFinisOrderAndDetail(){
        return orderMapper.getAllFinisOrderAndDetail();
    }

    //更新订单总金额
    public void updateOrderPrice(int orderId,int orderPrice){
        orderMapper.updateOrderPrice(orderId,orderPrice);
    }

    //获取所有未支付订单
    public List<Order> getAllNoPayOrderAndDetail(){
        return orderMapper.getAllNoPayOrderAndDetail();
    }

    //获取所有支付订单
    public List<Order> getAllPayOrderAndDetail(){
        return orderMapper.getAllPayOrderAndDetail();
    }

    //更新回收字段
    public void updatePayState(int orderId){
        orderMapper.updatePayState(orderId);
    }

    //根据订单ID查对应的订单
    public Order getOrderById2(int orderId){
        return orderMapper.getOrderById2(orderId);
    }
}
