package service;

import dao.FirstSortMapper;
import domain.FirstSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FirstSortServiceImpl implements FirstSortService{

    @Autowired
    public FirstSortMapper firstSortMapper;

    //查询所有一级分类
    public List<FirstSort> getAllFirstSort() {
        return firstSortMapper.getAllFirstSort();
    }
}
