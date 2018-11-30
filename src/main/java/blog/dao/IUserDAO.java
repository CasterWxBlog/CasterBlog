package blog.dao;

import blog.domain.User;
import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-15-16:09
 */
public interface IUserDAO {
    void save(User user);
    void update(User user);
    void delete(User user);
    User get(Integer id);
    List<User> listAll();
}
