package action;

import PO.Admin;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtil;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;


public class AdminAction extends ActionSupport implements SessionAware {

    private Session hbnSession;
    private String username;
    private String pwd;
    private Admin ad;
    List<Admin>adminList;

    private Map<String, Object> session;


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    //管理员登陆
    public String login_adm(){
        String hql="from Admin where username =:name and pwd =:password";
        System.out.println(hql);
        hbnSession= HbnUtil.getSession();

        System.out.println(this.username);
        hbnSession.beginTransaction();

        Admin ad=(Admin) hbnSession.createQuery(hql)
                .setParameter("name",this.username)
                .setParameter("password",this.pwd)
                .uniqueResult();
        System.out.println(ad);
        hbnSession.getTransaction().commit();
        if(ad==null){
            System.out.println("admin is null");
            return "login";
        }
        else{
            session.put("adminUsername",ad.getUsername());
            System.out.println("adminUsername is:"+ad.getUsername());
            return "success";
        }

    }
    //管理员注册
    public String insert_adm(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println(ad);
            hbnSession.save(ad);
            hbnSession.getTransaction().commit();
            return "success";
        }catch (Exception e){
            e.printStackTrace();
            return "error";
        }


    }
    //查询所有管理员信息
    public String findAll(){
        String hql="from Admin";
        System.out.println(hql);
        hbnSession= HbnUtil.getSession();
        hbnSession.beginTransaction();
        adminList=hbnSession.createQuery(hql).list();
        session.put("adminList",this.adminList);
        System.out.println(adminList);
        hbnSession.getTransaction().commit();
        if(adminList!=null){
            return "success";
        }
        else
            return "error";
    }
    //修改管理员信息
    public String update(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println(ad);
            hbnSession.update(ad);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //删除管理员信息
    public String delete(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println("delete id="+ad.getAdid());
            hbnSession.delete(ad);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    public Admin getAd() {
        return ad;
    }

    public void setAd(Admin ad) {
        this.ad = ad;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }

}
