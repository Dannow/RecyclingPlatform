package document;

import lombok.Data;
import org.apache.solr.client.solrj.beans.Field;

@Data
public class Recycle {
    @Field
    private int goodsId;
    @Field
    private String goodsName;
    @Field
    private double goodsPrice;
    @Field
    private String goodsPicture;
}
