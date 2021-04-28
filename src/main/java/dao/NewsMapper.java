package dao;

import domain.News;

import java.util.List;

public interface NewsMapper {
    //查询全部信息
    public List<News> getAllNews();
}
