package blog.action;

import blog.dao.impl.BlogMarkDownDaoImpl;
import blog.domain.BlogMarkDown;
import com.opensymphony.xwork2.Action;

import java.util.ArrayList;
import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-13:31
 */
public class BlogListAction   implements Action {
    public List<BlogMarkDown> list = new ArrayList<>() ;

    @Override
    public String execute() throws Exception {
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        list = blogMarkDownDao.listAll();

        return SUCCESS ;
    }
}
