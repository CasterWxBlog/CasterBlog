package blog.action;

import com.opensymphony.xwork2.Action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-8:42
 */
public class IndexAction implements Action {
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
}