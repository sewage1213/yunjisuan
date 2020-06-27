package PO;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "23-admin")
public class Admin implements Serializable {
    private int adminID;
    private String username;
    private String password;
    private String roleid;
    private String rolename;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
