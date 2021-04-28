package domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class CartDetails {
    private int cartDetailsId;
    private int amount;
    private Cart cart;
    private Goods goods;
}
