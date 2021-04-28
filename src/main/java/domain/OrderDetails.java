package domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class OrderDetails {
    private int orderDetailsId;
    private int predictWeight;
    private int realWeight;
    private Order order;
    private Goods goods;
}
