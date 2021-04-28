package service;

import dao.SecondSortMapper;
import domain.SecondSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SecondSortServiceImpl implements SecondSortService {
    @Autowired
    public SecondSortMapper secondSortMapper;

    //查询所有二级分类
    public List<SecondSort> getAllSecondSort() {
        return secondSortMapper.getAllSecondSort();
    }

    //查询一级分类下的二级分类
    public List<SecondSort> getAllSecondSortByFirstSortId(int firstSortId) {
        return secondSortMapper.getAllSecondSortByFirstSortId(firstSortId);
    }

    //根据二级分类ID查询
    public SecondSort getSecondSortById(int secondSortId){
        return secondSortMapper.getSecondSortById(secondSortId);
    }
}
