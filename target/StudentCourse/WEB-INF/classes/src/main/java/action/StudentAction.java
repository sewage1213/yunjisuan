package action;


import PO.Vip;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;


import java.util.List;
import java.util.Map;

public class StudentAction extends ActionSupport implements SessionAware {

    private Vip stu;
    private Map<String, Object> session;
    private String sno;
    private String password;
    List<String> stuList;
    List<String> deptList;
    List<String> sreList;

    public String findAll(){
        String hql = "from Vip";
        System.out.println(hql);
        //HQL查询所有学生信息
        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList = hbnSession.createQuery(hql).list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList != null) {
            return "success";
        }else
            return "error";
    }





    //添加学生信息
    public String insert(){
        try {
            Session hbnSession = HbnUtils.getSession();
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
            Session hbnSession = HbnUtils.getSession();
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
    //删除学生信息
    public String delete(){
        try {
            Session hbnSession = HbnUtils.getSession();
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




    //根据姓名查询学生信息
    public String findByName(){
        String hql = "from Vip where name like ?0";
        System.out.println(hql);
        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList = hbnSession.createQuery(hql).setParameter(0,"%" + stu.getName() + "%").list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            return "success";
        }else
            return "error";
    }


    //根据学院查询学生信息
    public String findByDept(){
        String hql = "from Vip where department like ?0";
        System.out.println(hql);
        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList = hbnSession.createQuery(hql).setParameter(0, "%"+ stu.getDepartment() + "%").list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            return "success";
        }else
            return "error";
    }





    public Vip getStu() {
        return stu;
    }

    public void setStu(Vip stu) {
        this.stu = stu;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public List<String> getStuList() {
        return stuList;
    }

    public void setStuList(List<String> stuList) {
        this.stuList = stuList;
    }

    public List<String> getDeptList() {
        return deptList;
    }

    public void setDeptList(List<String> deptList) {
        this.deptList = deptList;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getSreList() {
        return sreList;
    }

    public void setSreList(List<String> sreList) {
        this.sreList = sreList;
    }

}

