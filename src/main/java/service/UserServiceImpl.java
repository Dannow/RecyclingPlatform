package service;

import dao.UserMapper;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    public UserMapper userMapper;

    //通过ID查询用户
    public User getUserById(int userId) {
        return userMapper.getUserById(userId);
    }

    //查询所有用户
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    //验证用户
    public User checkUser(String userPhone, String password) {
        return userMapper.checkUser(userPhone,password);
    }

    //添加用户
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    //删除用户
    public void deleteUser(int userId) {
        userMapper.deleteUser(userId);
    }

    //更新用户密码
    public void updateUser(User user){
        userMapper.updateUser(user);
    }

    //更新支付宝账户密码
    public void updateAliPay(User user){
        userMapper.updateAliPay(user);
    }

    //更新电话
    public void updateUserPhone(User user){
        userMapper.updateUserPhone(user);
    }

    //删除地址
    public void deleteAddress(User user) {
        userMapper.deleteAddress(user);
    }

    //更新地址
    public void updateAddress(User user){
        userMapper.updateAddress(user);
    }

    //更新用户金额
    public void updateUserMoney(int money,int userId){
        userMapper.updateUserMoney(money,userId);
    }
}
