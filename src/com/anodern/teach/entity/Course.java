package com.anodern.teach.entity;

public class Course {
    private int cno;
    private String cname;
    private String credit;
    private String type;
    private String first;
    
    public int getCno() {
        return cno;
    }
    
    public void setCno(int cno) {
        this.cno = cno;
    }
    
    public String getCname() {
        return cname;
    }
    
    public void setCname(String cname) {
        this.cname = cname;
    }
    
    public String getCredit() {
        return credit;
    }
    
    public void setCredit(String credit) {
        this.credit = credit;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public String getFirst() {
        return first;
    }
    
    public void setFirst(String first) {
        this.first = first;
    }
}
