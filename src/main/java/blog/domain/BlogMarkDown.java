package blog.domain;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:13
 */
public class BlogMarkDown {
    private Integer id ;
    private String localurl  ;
    private String imgurl ;
    private String time ;
    private String local ;
    private Integer review ;
    private Integer memage;
    private String code ;
    @Override
    public String toString() {
        return "BlogMarkDown{" +
                "id='" + id +'\''+
                "localurl='" + localurl + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", time='" + time + '\'' +
                ", local='" + local + '\'' +
                ", review=" + review +
                ", memage=" + memage +
                ", code=" + code +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLocalurl() {
        return localurl;
    }

    public void setLocalurl(String localurl) {
        this.localurl = localurl;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Integer getReview() {
        return review;
    }

    public void setReview(Integer review) {
        this.review = review;
    }

    public Integer getMemage() {
        return memage;
    }

    public void setMemage(Integer memage) {
        this.memage = memage;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }
}
