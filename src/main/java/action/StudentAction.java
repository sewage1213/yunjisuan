package action;

import PO.Student;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtil;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.sql.Array;
import java.util.List;
import java.util.Map;

public class StudentAction extends ActionSupport implements SessionAware {
    private Student stu;
    List<Student> stuList;
    private Session hbnSession;
    private Map<String,Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    //学生登录
    public String login(){
        hbnSession=HbnUtil.getSession();//获取事物
        System.out.println(stu.getName());
        hbnSession.beginTransaction();//开启事务
        String hql="from Student where sid=:id and spwd=:pwd";
        stu =(Student)hbnSession.createQuery(hql)
                .setParameter("id",stu.getSid())
                .setParameter("pwd",stu.getSpwd())
                .uniqueResult();
        System.out.println(stu);
        hbnSession.getTransaction().commit();
        if(stu!=null){
            session.put("studentInfo",stu);
            System.out.println("studentName is:"+stu.getName());
            return "success";
        }
        else{
            return "login";
        }

    }

    //查询所有学生信息
    public String findAll(){
        String hql="from Student";
        System.out.println(hql);
        hbnSession= HbnUtil.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if(stuList!=null){
            return "success";
        }
        else
            return "error";
    }
    //添加学生信息
    public String insert(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.save(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //修改学生信息
    public String update(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.update(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    //模糊查询
    public String findByName(){
        String hql ="from Student where name like :sname";
        hbnSession= HbnUtil.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).setParameter("sname","%"+stu.getName()+"%").list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if(stuList!=null){
            return "success";
        }
        else
            return "error";
    }

    public String findById(){
        String hql ="from Student where sid= :id";
        hbnSession= HbnUtil.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).setParameter("id",stu.getSid()).list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if(stuList!=null){
            return "success";
        }
        else
            return "error";
    }

    //根据学院查询学生信息
    public String findDept(){
        String hql ="from Student where department like :dept";
        hbnSession= HbnUtil.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).setParameter("dept","%"+stu.getDepartment()+"%").list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if(stuList!=null){
            return "success";
        }
        else
            return "error";
    }
    //删除学生信息
    public String delete(){
        try {
            hbnSession= HbnUtil.getSession();
            hbnSession.beginTransaction();
            System.out.println("delete id="+stu.getSid());
            hbnSession.delete(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public List<Student> getStuList() {
        return stuList;
    }

    public void setStuList(List<Student> stuList) {
        this.stuList = stuList;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }

    public Map<String, Object> getSession() {
        return session;
    }
}
