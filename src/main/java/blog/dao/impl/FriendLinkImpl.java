package blog.dao.impl;

import blog.dao.IFriendLinkDAO;
import blog.domain.Comment;
import blog.domain.FriendLink;
import blog.util.HibernateSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-12-04-10:12
 */
public class FriendLinkImpl implements IFriendLinkDAO {
    public void save(FriendLink friendLink) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(friendLink);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void update(FriendLink friendLink) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(friendLink);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void delete(FriendLink friendLink) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(friendLink);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public FriendLink get(Integer id) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        FriendLink friendLink = (FriendLink) session.get(FriendLink.class,id);
        session.close() ;
        hibernateSession.closeSession();
        return friendLink;
    }

    public List<FriendLink> listAll() {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession();
        String hql = "SELECT  u FROM FriendLink u" ;
        Query query = session.createQuery(hql) ;
        List<FriendLink> list = query.list() ;
        session.close();
        hibernateSession.closeSession();
        return list;
    }
}
