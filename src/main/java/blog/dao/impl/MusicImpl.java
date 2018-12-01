package blog.dao.impl;

import blog.dao.IMusicDAO;
import blog.domain.Music;
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
public class MusicImpl implements IMusicDAO {
    @Override
    public void save(Music music) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(music);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public void update(Music music) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(music);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public void delete(Music music) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(music);
        transaction.commit();
        session.close() ;
        hibernateSession.closeSession();
    }

    @Override
    public Music get(Integer id) {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession() ;
        Music music = (Music) session.get(Music.class,id);
        session.close() ;
        hibernateSession.closeSession();
        return music;
    }

    @Override
    public List<Music> listAll() {
        HibernateSession hibernateSession = new HibernateSession() ;
        hibernateSession.initSession();
        Session session = hibernateSession.getSession();
        String hql = "SELECT  u FROM Music u" ;
        Query query = session.createQuery(hql) ;
        List<Music> musicList = query.list() ;
        session.close();
        hibernateSession.closeSession();
        return musicList;
    }
}
