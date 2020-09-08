package com.anodern.teach.entity;

public class Teacher {
    private int tno;
    private String tname;
    private String sex;
    private String birthday;
    private String secoll;
    private String phone;
    private String pass;
    
    public String getPass() {
        return pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    
    public int getTno() {
        return tno;
    }
    
    public void setTno(int tno) {
        this.tno = tno;
    }
    
    public String getTname() {
        return tname;
    }
    
    public void setTname(String tname) {
        this.tname = tname;
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
    
    public String getSecoll() {
        return secoll;
    }
    
    public void setSecoll(String secoll) {
        this.secoll = secoll;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
}
