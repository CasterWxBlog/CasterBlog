package blog.domain;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-15-16:01
 */
public class User {
    private Integer id ;
    private String name ;
    private String password ;
    private boolean isroot ;

    public void toDBString() {
        System.out.println("User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", isroot=" + isroot +
                '}');
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsroot() {
        return isroot;
    }

    public void setIsroot(boolean isroot) {
        this.isroot = isroot;
    }
}
