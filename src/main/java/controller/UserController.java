package controller;

import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    public UserService userService;

    //用户登录
    @RequestMapping("/login")
    public String login(String userPhone, String password, HttpSession session){
        //验证用户
        User user = userService.checkUser(userPhone, password);
        //把用户保存进session中
        if(user!=null){
            session.setAttribute("user",user);
            return "redirect:/index.jsp";
        }
        else {
            return "redirect:/login.jsp";
        }
    }

    //回收员和管理员登录
    @RequestMapping("/mangerLogin")
    public String mangerLogin(String userPhone, String password, HttpSession session){
        //验证用户
        User user = userService.checkUser(userPhone, password);
        //把用户保存进session中
        if(user!=null && user.getGrade() != 0){
            session.setAttribute("user",user);
            if(user.getGrade() == 1){
                return "redirect:/recyclerBackground/recyclerIndex.jsp";
            }
            else {
                return "redirect:/administratorBackground/adminIndex.jsp";
            }
        }
        else {
            return "redirect:/mangerLogin.jsp";
        }
    }

    //短信验证
    @RequestMapping("/checkCode")
    @ResponseBody
    public String checkCode(@RequestParam String reg_code, HttpSession session){
        //获得验证码
        String code= (String) session.getAttribute("code");
        //判断验证码是否正确
        if(reg_code.equals(code)){
            return "1";
        }
        else {
            return "2";
        }
    }

    //注册
    @RequestMapping("/register")
    public String register(User user){
        userService.addUser(user);
        return "redirect:/login.jsp";
    }

    //退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/index.jsp";
    }

    //更换密码
    @RequestMapping("/changePassword")
    @ResponseBody
    public String changePassword(String originalPassword,String newpassword,HttpSession session){
        User user= (User) session.getAttribute("user");
        //保存新密码
        if(user.getPassword().equals(originalPassword)){
            user.setPassword(newpassword);
            userService.updateUser(user);
        }
        return "1";
    }

    //设置支付宝账户
    @RequestMapping("/setPayCount")
    @ResponseBody
    public String setPayCount(@RequestParam String payName,String payAccount,HttpSession session){
        System.out.println(payName);
        User user= (User) session.getAttribute("user");
        user.setPayAccount(payAccount);
        user.setPayName(payName);
        userService.updateAliPay(user);
        return  "1";
    }

    //更新电话
    @RequestMapping("/changeUserPhone")
    @ResponseBody
    public String changeUserPhone(String newPhone,HttpSession session){
        User user= (User) session.getAttribute("user");
        user.setUserPhone(newPhone);
        userService.updateUserPhone(user);
        return "1";
    }

    //删除地址
    @RequestMapping("/deleteUserAddress")
    public String deleteUserAddress(Model model,HttpSession session){
        //删除地址
        User user1 = (User) session.getAttribute("user");
        userService.deleteAddress(user1);
        //更新session中的user
        User user = userService.getUserById(user1.getUserId());
        session.setAttribute("user",user);
        return "redirect:/userIndex/useraddress.jsp";
    }

    //更新地址
    @RequestMapping("/updateUserAddress")
    @ResponseBody
    public String updateUserAddress(User user2,HttpSession session){
        User user1 = (User) session.getAttribute("user");
        user2.setUserId(user1.getUserId());
        userService.updateAddress(user2);
        //更新session中的user
        User user = userService.getUserById(user1.getUserId());
        session.setAttribute("user",user);
        return "1";
    }
}
