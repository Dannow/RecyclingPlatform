package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import domain.Order;
import domain.OrderDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.OderDetailsService;
import service.OrderService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RecyclerController {
    @Autowired
    public OrderService orderService;
    @Autowired
    public OderDetailsService oderDetailsService;

    //显示所有的未完成订单
    @RequestMapping("/getAllOrder/{pageNum}")
    public String getAllOrder(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<Order> orderAndDetailList = orderService.getAllOrderAndDetail();
        //显示页码条，最多显示5个页码
        PageInfo<Order> orderAndDetail = new PageInfo<Order>(orderAndDetailList, 5);

        session.setAttribute("orderAndDetail",orderAndDetail);

        return "redirect:/recyclerBackground/order_unfinished.jsp";
    }

    //显示所有的完成订单
    @RequestMapping("/getAllFinishOrder/{pageNum}")
    public String getAllFinishOrder(@PathVariable int pageNum, HttpSession session){
        //设置每页显示10条数据，当前页面为pageNum页
        PageHelper.startPage(pageNum,10);
        List<Order> finishOrderAndDetailList = orderService.getAllFinisOrderAndDetail();
        //显示页码条，最多显示5个页码
        PageInfo<Order> finishOrderAndDetail = new PageInfo<Order>(finishOrderAndDetailList, 5);

        session.setAttribute("finishOrderAndDetail",finishOrderAndDetail);

        return "redirect:/recyclerBackground/order.jsp";
    }

    //更新真实重量
    @RequestMapping("/setRealWeight")
    public String setRealWeight(OrderDetails orderDetails){
        oderDetailsService.updateRealWeight(orderDetails);
        return "redirect:/recyclerBackground/recyclerIndex.jsp";
    }

    //更新回收状态
    @RequestMapping("/setRecycleState/{orderId}")
    public String setRecycleState(@PathVariable int orderId){
        int sum=0,i=2;
        List<OrderDetails> orderDetailList = oderDetailsService.getOrderDetailByOrderId(orderId);
        for(OrderDetails o : orderDetailList){
            sum+=o.getGoods().getGoodsPrice()*o.getRealWeight();
            if(o.getRealWeight() != 0){//判断是否全部都已近设置了重量
                i = 1;
            }else {
                i = 0;
                break;
            }
        }
        if(i == 1){
            orderService.updateOrderPrice(orderId,sum);
            orderService.updateRecycleState(orderId);
            return "redirect:/getAllFinishOrder/1";
        }else {
            return "redirect:/getAllOrder/1";
        }

    }

    //回收员退出登录
    @RequestMapping("/recyclerLogout")
    public String recyclerLogout(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/mangerLogin.jsp";
    }

}
