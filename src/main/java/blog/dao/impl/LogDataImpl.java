package blog.dao.impl;

import blog.dao.ILogDAO;
import blog.domain.LogData;
import blog.util.HibernateSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-14:46
 */
public class LogDataImpl implements ILogDAO {
    public void save(LogData data) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(data);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void update(LogData data) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(data);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public void delete(LogData data) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(data);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    public LogData get(Integer id) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        LogData logData = (LogData) session.get(LogData.class,id);
        session.close() ;
        hibernateSession.closeSession();
        return logData;
    }

    public List<LogData> listAll() {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession();
        String hql = "SELECT  u FROM LogData u" ;
        Query query = session.createQuery(hql) ;
        List<LogData> logData = query.list() ;
        session.close();
        hibernateSession.closeSession();
        return logData;
    }
}
