package blog.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:24
 */
public class HibernateSession {
    private Configuration configuration = null;
    private SessionFactory sessionFactory = null;
    private Session session = null;
    public void initSession(){
        configuration = new Configuration() ;
        configuration.configure("hibernate.cfg.xml") ; //"hibernate.cfg.xml"
        sessionFactory = configuration.buildSessionFactory() ;
        session = sessionFactory.openSession() ;
    }
    public void closeSession(){
        try{
            if(session!=null){
                session.close();
            }
        }catch (Exception e){
        }
        try{
            if(session!=null){
                sessionFactory.close();
            }
        }catch (Exception e){
        }
    }

    public Session getSession() {
        return session;
    }
}
