package com.anodern.teach;

import com.anodern.teach.entity.Teacher;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TeacherDB extends DBConn {
    
    public PageBean getPage(int curPage){
        String sql = "select * from teacher";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    public Teacher getEntity(String tno){
        try{
            PreparedStatement psmt = conn.prepareStatement("SELECT * FROM teacher WHERE tno=?");
            psmt.setString(1,tno);
            //System.out.println(tno);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1){//获得结果长度
                System.out.println("wdnmd");
                return null;
            }
            rs.first();
    
            Teacher entity=new Teacher();
            entity.setTno(rs.getInt("tno"));
            entity.setTname(rs.getString("tname"));
            entity.setSex(rs.getString("sex"));
            entity.setBirthday(rs.getString("birthday"));
            entity.setSecoll(rs.getString("secoll"));
            entity.setPhone(rs.getString("phone"));
            entity.setPass(rs.getString("pass"));
            rs.close();
            
            return entity;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(Teacher entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into teacher(" +
                        "tno,tname,sex,birthday,secoll,phone,pass)" +
                        " values(?,?,?,?,?,?,?)");
                pst.setInt(1,entity.getTno());
                pst.setString(2,entity.getTname());
                pst.setString(3,entity.getSex());
                pst.setString(4,entity.getBirthday());
                pst.setString(5,entity.getSecoll());
                pst.setString(6,entity.getPhone());
                pst.setString(7,entity.getPass());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(int oldtno, Teacher stu){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst;
                if(stu.getPass()==null)
                    pst=conn.prepareStatement("UPDATE teacher SET tno=?,tname=?,sex=?,birthday=?," +
                            "secoll=?,phone=? WHERE tno=?");
                else pst=conn.prepareStatement("UPDATE teacher SET tno=?,tname=?,sex=?,birthday=?," +
                            "secoll=?,phone=?,pass=? WHERE tno=?");
                pst.setInt(1,stu.getTno());
                pst.setString(2,stu.getTname());
                pst.setString(3,stu.getSex());
                pst.setString(4,stu.getBirthday());
                pst.setString(5,stu.getSecoll());
                pst.setString(6,stu.getPhone());
                if(stu.getPass()==null){
                    pst.setInt(7,oldtno);
                }else{
                    pst.setString(7,stu.getPass());
                    pst.setInt(8,oldtno);
                }
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(int tno){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from teacher where tno=?");
                pst.setInt(1,tno);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
