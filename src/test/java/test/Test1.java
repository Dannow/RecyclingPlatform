package test;

import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test1 {
    @Autowired
    @Qualifier("userServiceImpl")
    public UserService userService;
    @Autowired
    public SecondSortService secondSortService;
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public OrderService orderService;
    @Autowired
    public NewsService newsService;
    @Autowired
    public OderDetailsService oderDetailsService;
    @Autowired
    private CooperationService cooperationService;
    @Autowired
    private CartService cartService;
    @Autowired
    private CartDetailService cartDetailService;
    @Autowired
    private HttpSolrClient solrClient;

    @Test
    public void test1(){
        System.out.println(orderService.getOrderById2(23));
    }


}
