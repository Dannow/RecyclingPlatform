package repository;

import document.Recycle;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;
import java.util.List;

public interface RecyleRepository {
    //根据ID删除solr中的商品
    public void deleteRecyle(int goodsId) throws IOException, SolrServerException;

    //增加或更新商品
    public void addOrUpdRecyle(Recycle recycle) throws IOException, SolrServerException;

    //查询商品
    public List<Recycle> getRecyle(String goodsName) throws IOException, SolrServerException;
}
