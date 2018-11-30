package blog.dao;

import blog.domain.BlogMarkDown;
import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:21
 */
public interface IBlogDAO {
    void save(BlogMarkDown user);
    void update(BlogMarkDown user);
    void delete(BlogMarkDown user);
    BlogMarkDown get(Integer id);
    List<BlogMarkDown> listAll();
}
