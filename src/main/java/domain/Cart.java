package domain;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
@Data
public class Cart {
    private int cartId;
    private User user;
    private int cartMoney;
    private List<CartDetails> cartDetailsList=new ArrayList<CartDetails>();
    private List<Goods> cartGoods=new ArrayList<Goods>();
}
