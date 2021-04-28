package dao;

import domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //通过ID查询用户
    public User getUserById(int userId);

    //查询所有用户
    public List<User> getAllUser();

    //验证用户
    public User checkUser(@Param("userPhone") String userPhone,@Param("password") String password);

    //添加用户
    public void addUser(User user);

    //删除用户
    public void deleteUser(int userId);

    //更新用户密码
    public void updateUser(User user);

    //更新支付宝账户密码
    public void updateAliPay(User user);

    //更新电话
    public void updateUserPhone(User user);

    //删除地址
    public void deleteAddress(User user);

    //更新地址
    public void updateAddress(User user);

    //更新用户金额
    public void updateUserMoney(@Param("money") int money,@Param("userId") int userId);

}
