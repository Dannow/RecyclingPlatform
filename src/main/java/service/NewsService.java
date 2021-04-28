package service;

import domain.News;

import java.util.List;

public interface NewsService {
    //查询全部信息
    public List<News> getAllNews();
}
