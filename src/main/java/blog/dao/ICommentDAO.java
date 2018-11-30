package blog.dao;

import blog.domain.Comment;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:06
 */
public interface ICommentDAO {
    void save(Comment comment);
    void update(Comment comment);
    void delete(Comment comment);
    Comment get(Integer id);
    List<Comment> listAll();
}
