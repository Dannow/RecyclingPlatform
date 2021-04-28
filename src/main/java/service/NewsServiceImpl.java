package service;

import dao.NewsMapper;
import domain.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    public NewsMapper newsMapper;

    //查询全部信息
    public List<News> getAllNews(){
        return newsMapper.getAllNews();
    }
}
