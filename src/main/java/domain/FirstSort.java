package domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class FirstSort {
    private int firstSortId;
    private String firstSortName;
    private String fiirstSortPicture;
    private List<SecondSort> secondSortList=new ArrayList<SecondSort>();
}
