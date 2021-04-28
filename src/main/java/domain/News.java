package domain;

import lombok.Data;

@Data
public class News {
    private int newsId;
    private String title;
    private String content;
    private String picture;
    private String time;
}
