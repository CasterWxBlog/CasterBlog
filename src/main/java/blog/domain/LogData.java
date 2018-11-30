package blog.domain;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-14:42
 */
public class LogData {
    private Integer id ;
    private String time ;
    private String title ;

    @Override
    public String toString() {
        return "LogDataTest{" +
                "id='" + id + '\'' +
                ",time='" + time + '\'' +
                ", title='" + title + '\'' +
                '}';
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


}
