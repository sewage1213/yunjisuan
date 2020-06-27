package PO;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name = "student")
public class Student {
    private String sid;
    private String spwd;
    private String name;
    private String sex;
    private String birthday;
    private String university;
    private String grade;
    private String department;
    private String major;
    public Student(){}
    public Student(String name,String sex,String spwd,String birthday
            ,double score,String university,String grade,String department,String major){
        this.name=name;
        this.sex=sex;
        this.spwd=spwd;
        this.birthday=birthday;
        this.university=university;
        this.grade=grade;
        this.department=department;
        this.major=major;
    }

    @Override
    public String toString() {
        return "student{" +
                "sid=" + sid +
                ", spwd='" + spwd + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                ", university='" + university + '\'' +
                ", grade='" + grade + '\'' +
                ", department='" + department + '\'' +
                ", major='" + major + '\'' +
                '}';
    }

    @Id
    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }
}
