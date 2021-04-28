package domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Goods {
    private int goodsId;
    private String goodsName;
    private int goodsPrice;
    private String goodsPicture;
    private SecondSort secondSort;
}
