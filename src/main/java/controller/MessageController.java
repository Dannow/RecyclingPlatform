package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import util.SendMessageUtil;

import javax.servlet.http.HttpSession;

@Controller
public class MessageController {

    //发送短信
    @RequestMapping("/sendMessage")
    @ResponseBody
    public String sendMessage(HttpSession session,@RequestParam String userPhone){
        //生成6位随机数
        int random = (int)((Math.random()*9+1)*100000);
        String code=Integer.toString(random);
        //调用发送短信工具类
        SendMessageUtil.sendMsg(userPhone,code);
        //把验证码放入session中
        session.setAttribute("code",code);
        return "reg";
    }
}
