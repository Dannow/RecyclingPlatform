package dao;

import domain.SecondSort;

import java.util.List;

public interface SecondSortMapper {
    //查询所有二级分类
    public List<SecondSort> getAllSecondSort();

    //查询一级分类下的二级分类
    public List<SecondSort> getAllSecondSortByFirstSortId(int firstSortId);

    //根据二级分类ID查询
    public SecondSort getSecondSortById(int secondSortId);
}
