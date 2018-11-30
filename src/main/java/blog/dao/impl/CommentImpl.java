package blog.dao.impl;

import blog.dao.ICommentDAO;
import blog.domain.BlogMarkDown;
import blog.domain.Comment;
import blog.util.HibernateSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:07
 */
public class CommentImpl implements ICommentDAO {
    @Override
    public void save(Comment comment) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(comment);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public void update(Comment comment) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(comment);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public void delete(Comment comment) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(comment);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public Comment get(Integer id) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Comment comment = (Comment) session.get(Comment.class,id);
        session.close() ;
        hibernateSession.closeSession();
        return comment;
    }

    @Override
    public List<Comment> listAll() {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession();
        String hql = "SELECT  u FROM Comment u" ;
        Query query = session.createQuery(hql) ;
        List<Comment> list = query.list() ;
        session.close();
        hibernateSession.closeSession();
        return list;
    }
}
