package blog.action;

import blog.dao.impl.CommentImpl;
import blog.domain.Comment;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-12-03-18:57
 */
public class AddConnect extends ActionSupport {

    public  String saveData() throws UnsupportedEncodingException {
        HttpServletRequest request =  ServletActionContext.getRequest() ;
        HttpServletResponse response = ServletActionContext.getResponse() ;
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String url = request.getParameter("url");
        String content = request.getParameter("content");
        String param= URLDecoder.decode(content, "UTF-8");
        System.out.println(url);
        System.out.println(content);
        System.out.println(content.length());
        System.out.println(param);
        System.out.println(param.length());
        CommentImpl comment = new CommentImpl() ;
        Comment c = new Comment() ;
        c.setContent(content);
        c.setUrl("/list/"+url+".jsp");
        c.setImgurl("../images/Absolutely.jpg");
        c.setName("游客");
        c.setTime(df.format(new Date()));
        comment.save(c);
        System.out.println(c.toString());
        return SUCCESS ;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS ;
    }
}
