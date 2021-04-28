package domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class SecondSort {
    private int secondSortId;
    private String secondSortName;
    private String secondSortPicture;
    private FirstSort firstSort;
    private List<Goods> goodsList=new ArrayList<Goods>();
}
