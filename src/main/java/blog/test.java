package blog;

import blog.dao.impl.BlogMarkDownDaoImpl;
import blog.dao.impl.UserDAOImpl;
import blog.domain.BlogMarkDown;
import blog.domain.User;
import org.junit.jupiter.api.Test;
import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-15-16:16
 */
public class test {
    @Test
    public void blogSaveTest(){
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        BlogMarkDown blogMarkDown = new BlogMarkDown() ;
        blogMarkDown.setId(1);
        blogMarkDown.setLocalurl("github.com/CasterWx");
        blogMarkDown.setImgurl("https://avatars3.githubusercontent.com");
        blogMarkDown.setLocal("Java");
        blogMarkDown.setTime("2018");
        blogMarkDown.setReview(20);
        blogMarkDown.setMemage(5);
        blogMarkDown.setCode("在第12步特征入库中，会对当前指纹的mdl数据与databases中所有的mdl进行对比,然后返回识别结果.");
        blogMarkDownDao.save(blogMarkDown);
    }

    @Test
    public void saveTest(){
        UserDAOImpl userDAO = new UserDAOImpl();
        User user = new User() ;
        user.setId(1610120020);
        user.setName("wxh");
        user.setPassword("wxh");
        user.setIsroot(true);
        userDAO.save(user);
    }
    @Test
    public void updateTest(){
        UserDAOImpl userDAO = new UserDAOImpl();
        User user = new User() ;
        user.setId(1610120023);
        user.setName("username");
        user.setPassword("wda");
        user.setIsroot(true);
        userDAO.update(user);
    }
    @Test
    public void deleteTest(){
        UserDAOImpl userDAO = new UserDAOImpl();
        User user = new User() ;
        user.setId(1610120021);
        userDAO.delete(user);
    }
    @Test
    public void getTest(){
        UserDAOImpl userDAO = new UserDAOImpl();
        User user = userDAO.get(1610120020);
        user.toDBString();
    }
    @Test
    public void listTest(){
        UserDAOImpl userDAO = new UserDAOImpl();
        List<User> list = userDAO.listAll() ;
        for (int i=0;i<list.size();i++) {
            list.get(i).toDBString();
        }
    }
}
