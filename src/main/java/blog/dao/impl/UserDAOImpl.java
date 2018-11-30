package blog.dao.impl;

import blog.dao.IUserDAO;
import blog.domain.User;
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
 * @create 2018-11-15-16:11
 */
public class UserDAOImpl implements IUserDAO {
    private Configuration configuration = null;
    private SessionFactory sessionFactory = null;
    private Session session = null;
    private void initSession(){
        configuration = new Configuration() ;
        configuration.configure("hibernate.cfg.xml") ; //"hibernate.cfg.xml"
        sessionFactory = configuration.buildSessionFactory() ;
        session = sessionFactory.openSession() ;
    }
    private void closeSession(){
        session.close();
        sessionFactory.close();
    }

    public void save(User user) {
        initSession();
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.save(user);
        transaction.commit();
        closeSession();
    }

    public void update(User user) {
        initSession();
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.update(user);
        transaction.commit();
        closeSession();
    }

    public void delete(User user) {
        initSession();
        Transaction transaction = session.getTransaction() ;
        transaction.begin();
        session.delete(user);
        transaction.commit();
        closeSession();
    }

    public User get(Integer id) {
        initSession();
        User user = (User) session.get(User.class,id);
        closeSession();
        return user;
    }

    public List<User> listAll() {
        initSession();
        String hql = "SELECT  u FROM User u" ;
        Query query = session.createQuery(hql) ;
        List<User> users = query.list() ;
        closeSession();
        return users;
    }
}
