package PO;

import javax.persistence.*;

@Entity
@Table(name = "admin")
public class Admin {
    private int adid;
    private String username;
    private String pwd;
    private String roleid;
    private String rolename;

    @Override
    public String toString() {
        return "admin{" +
                "adid=" + adid +
                ", username='" + username + '\'' +
                ", pwd='" + pwd + '\'' +
                ", roleid='" + roleid + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }

    public Admin(){}
    public Admin(String username,String pwd,String roleid,String rolename){
        this.username=username;
        this.pwd=pwd;
        this.roleid=roleid;
        this.rolename=rolename;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getAdid() {
        return adid;
    }

    public void setAdid(int adid) {
        this.adid = adid;
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

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
}
