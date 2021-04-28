package domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;
@Data
public class Order {
    private int orderId;
    private int orderPrice;
    private String consumerName;
    private String consumerPhone;
    private String consumerAddress;
    private String orderTime;
    private String pickingTime;
    private String payName;
    private String payAccount;
    private int deliveryState;
    private int recycleState;
    private int payState;
    private User user;
    private List<OrderDetails> orderDetailsList=new ArrayList<OrderDetails>();
    private List<Goods> orderGoods=new ArrayList<Goods>();
}
