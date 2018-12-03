package test;

import blog.dao.impl.CommentImpl;
import blog.domain.Comment;
import org.junit.jupiter.api.Test;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:10
 */
public class CommentTest {
    @Test
    public void test(){
        CommentImpl commentimp = new CommentImpl() ;
        Comment comment = new Comment() ;
        //comment.setId(1);
        comment.setUrl("/list/detail8.jsp");
        comment.setImgurl("../images/Absolutely.jpg");
        comment.setName("AntzUhl");
        comment.setTime("2018-12-3-19:42");
        comment.setContent("你好!");
        commentimp.save(comment);
    }
}
