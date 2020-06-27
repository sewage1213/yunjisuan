package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HbnUtil {
    private static SessionFactory sessionFactory;
    public static  Session getSession(){//返回类型为Session，static类方法
       /*
        //创建session工厂
        SessionFactory sf = getSessionFactory();
        //获取数据库连接对象
        Session session = sf.getCurrentSession();//单例模式
        return session;
        */

        return getSessionFactory().getCurrentSession();//单例模式
    }

    //单例模式
    public static SessionFactory getSessionFactory() {
        //读hibernate.cfg.xml
        if(sessionFactory == null || sessionFactory.isClosed()){
            sessionFactory = new Configuration().configure().buildSessionFactory();
        }
        return sessionFactory;
    }

}
