package blog.dao.impl;

import blog.dao.IBlogDAO;
import blog.domain.BlogMarkDown;
import blog.domain.User;
import blog.util.HibernateSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:22
 */
public class BlogMarkDownDaoImpl implements IBlogDAO {

    public void save(BlogMarkDown blogdata) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(blogdata);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void update(BlogMarkDown blogdata) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(blogdata);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void delete(BlogMarkDown blogdata) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(blogdata);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public BlogMarkDown get(Integer id) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        BlogMarkDown blogMarkDown = (BlogMarkDown) session.get(BlogMarkDown.class,id);
        session.close() ;
        hibernateSession.closeSession();
        return blogMarkDown;
    }

    public List<BlogMarkDown> listAll() {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession();
        String hql = "SELECT  u FROM BlogMarkDown u" ;
        Query query = session.createQuery(hql) ;
        List<BlogMarkDown> blogMarkDownList = query.list() ;
        session.close();
        hibernateSession.closeSession();
        return blogMarkDownList;
    }
}
