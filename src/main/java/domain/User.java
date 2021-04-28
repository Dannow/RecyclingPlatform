package domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;
@Data
public class User {
    private int userId;
    private String userName;
    private String userPhone;
    private String password;
    private String address;
    private int money;
    private String payName;
    private String payAccount;
    private int grade;
    private List<Order> orderList=new ArrayList<Order>();
}
