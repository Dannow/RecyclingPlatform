package controller;

import com.alipay.api.AlipayApiException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import domain.Goods;
import domain.Order;
import domain.SecondSort;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import service.GoodsService;
import service.OrderService;
import service.SecondSortService;
import service.UserService;
import util.PayUtil;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class MangerController {
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public SecondSortService secondSortService;
    @Autowired
    public UserService userService;
    @Autowired
    public OrderService orderService;

    //查询所有商品
    @RequestMapping("/showGoods/{pageNum}")
    public String showGoods(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<Goods> allGoodsAndSecondSort = goodsService.getAllGoodsAndSecondSort();
        //显示页码条，最多显示5个页码
        PageInfo<Goods> goodsList = new PageInfo<Goods>(allGoodsAndSecondSort, 5);

        //获取全部二级分类
        List<SecondSort> allSecondSort = secondSortService.getAllSecondSort();

        session.setAttribute("goodsList",goodsList);
        session.setAttribute("allSecondSort",allSecondSort);

        return "redirect:/administratorBackground/goods.jsp";
    }

    //显示所有用户
    @RequestMapping("/showAllUser/{pageNum}")
    public String showAllUser(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<User> userList2 = userService.getAllUser();
        //显示页码条，最多显示5个页码
        PageInfo<User> userList= new PageInfo<User>(userList2, 5);

        session.setAttribute("userList",userList);
        return "redirect:/administratorBackground/user.jsp";
    }

    //显示所有未支付订单
    @RequestMapping("/showAllNoPayOrder/{pageNum}")
    public String showAllNoPayOrder(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<Order> allNoPayOrderAndDetail = orderService.getAllNoPayOrderAndDetail();
        //显示页码条，最多显示5个页码
        PageInfo<Order> noPayOrderList= new PageInfo<Order>(allNoPayOrderAndDetail, 5);
        session.setAttribute("noPayOrderList",noPayOrderList);

        return "redirect:/administratorBackground/order_unfinished.jsp";
    }

    //显示所有已支付订单
    @RequestMapping("/showAllPayOrder/{pageNum}")
    public String showAllPayOrder(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<Order> allPayOrderAndDetail = orderService.getAllPayOrderAndDetail();
        //显示页码条，最多显示5个页码
        PageInfo<Order> PayOrderList= new PageInfo<Order>(allPayOrderAndDetail, 5);
        session.setAttribute("PayOrderList",PayOrderList);

        return "redirect:/administratorBackground/order.jsp";
    }


    //更新商品
    @RequestMapping("/updateGoods")
    public String updateGoods(Goods goods){
        goodsService.updateGoods(goods);
        return "redirect:/showGoods/1";
    }

    //删除商品
    @RequestMapping("/deleteGoods/{goodsId}")
    public String deleteGoods(@PathVariable int goodsId){
        goodsService.deleteGoods(goodsId);
        return "redirect:/showGoods/1";
    }

    //添加商品
    @RequestMapping("/addGoods")
    public String addGoods(int secondSortId, Goods goods, @RequestParam CommonsMultipartFile file, HttpServletRequest session) throws IOException {
        //保存数据到数据库
        String filename=file.getOriginalFilename();
        goods.setGoodsPicture(filename);
        SecondSort secondSort = secondSortService.getSecondSortById(secondSortId);
        goods.setSecondSort(secondSort);
        goodsService.addGoods(goods);

        //上传文件
        //1、确定上传路径
        ServletContext servletContext = session.getServletContext();
        String realPath = servletContext.getRealPath("/static/picture");
        //2、创建文件夹
        File filePath = new File(realPath);
        if (!filePath.exists()){
            filePath.mkdirs();
        }
        //3、确定完整路径
        filePath=new File(filePath+"/"+filename);
        //4、开始上传
        file.transferTo(filePath);

        return "redirect:/showGoods/1";
    }

    //删除用户
    @RequestMapping("/deleteUser/{userId}")
    public String deleteUser(@PathVariable int userId){
        userService.deleteUser(userId);
        return "redirect:/showAllUser/1";
    }

    //支付
    @RequestMapping("/payOrder/{orderId}")
    public String payOrder(@PathVariable int orderId,HttpSession session) throws AlipayApiException {
        Order order = orderService.getOrderById2(orderId);
        String orderId2=Integer.toString(order.getOrderId());
        String orderPrice=Integer.toString(order.getOrderPrice());
        //调用支付方法
        boolean pay=PayUtil.pay(orderId2,orderPrice,order.getPayAccount(),order.getPayName());
        if(pay){
            //更新订单支付状态
            orderService.updatePayState(orderId);

            //更新用户金额
            User user = order.getUser();
            int money = user.getMoney() + order.getOrderPrice();
            userService.updateUserMoney(money , user.getUserId());

            return "redirect:/showAllPayOrder/1";
        }else {
            return "redirect:/showAllNoPayOrder/1";
        }
    }

}
