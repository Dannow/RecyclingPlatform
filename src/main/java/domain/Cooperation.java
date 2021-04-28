package domain;

import lombok.Data;

@Data
public class Cooperation {
    private int cooperationId;
    private String name;
    private String phone;
    private String email;
    private String introduce;
    private int state;
}
