package repository;

import document.Recycle;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.UpdateResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.util.List;

@Repository
public class RecyleRepositoryImpl implements RecyleRepository {
    @Autowired
    private HttpSolrClient solrClient;

    //根据ID删除solr中的商品
    public void deleteRecyle(int goodsId) throws IOException, SolrServerException {
        //删除
        UpdateResponse recycle = solrClient.deleteById("recycle",Integer.toString(goodsId));
        //提交
        solrClient.commit("recycle");
    }

    //增加或更新商品
    public void addOrUpdRecyle(Recycle recycle) throws IOException, SolrServerException{
        //增加或修改
        solrClient.addBean("recycle",recycle);
        //提交
        solrClient.commit("recycle");
    }

    //查询商品
    public List<Recycle> getRecyle(String goodsName) throws IOException, SolrServerException{
        //查询条件
        SolrQuery solrQuery = new SolrQuery();
        solrQuery.setQuery("goodsName:"+goodsName);
        //查询
        QueryResponse recycle = solrClient.query("recycle", solrQuery);

        //转为集合
        List<Recycle> recycleList = recycle.getBeans(Recycle.class);

        return  recycleList;
    }
}
