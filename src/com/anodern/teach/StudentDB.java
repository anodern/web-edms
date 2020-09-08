package com.anodern.teach;

import com.anodern.teach.entity.Student;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class StudentDB extends DBConn {
    
    public PageBean getPage(int curPage){
        String sql = "select * from student";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public Student getEntity(String sno){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from student where sno=?");
            psmt.setString(1,sno);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
            
            Student stu=new Student();
            stu.setSno(rs.getInt("sno"));
            stu.setSname(rs.getString("sname"));
            stu.setSex(rs.getString("sex"));
            stu.setBirthday(rs.getString("birthday"));
            stu.setNation(rs.getString("nation"));
            stu.setGrade(rs.getString("grade"));
            stu.setSecoll(rs.getString("secoll"));
            stu.setSpec(rs.getString("spec"));
            stu.setSclass(rs.getString("sclass"));
            stu.setPass(rs.getString("pass"));
            rs.close();
            
            return stu;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(Student stu){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into student(" +
                        "sno,sname,sex,birthday,nation,grade,secoll,spec,sclass,pass)" +
                        " values(?,?,?,?,?,?,?,?,?,?)");
                pst.setInt(1,stu.getSno());
                pst.setString(2,stu.getSname());
                pst.setString(3,stu.getSex());
                pst.setString(4,stu.getBirthday());
                pst.setString(5,stu.getNation());
                pst.setString(6,stu.getGrade());
                pst.setString(7,stu.getSecoll());
                pst.setString(8,stu.getSpec());
                pst.setString(9,stu.getSclass());
                pst.setString(10,stu.getPass());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(int oldsno, Student stu){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst;
                if(stu.getPass()==null)
                    pst=conn.prepareStatement("UPDATE student SET sno=?,sname=?,sex=?,birthday=?," +
                        "nation=?,grade=?,secoll=?,spec=?,sclass=? WHERE sno=?");
                else pst=conn.prepareStatement("UPDATE student SET sno=?,sname=?,sex=?,birthday=?," +
                        "nation=?,grade=?,secoll=?,spec=?,sclass=?,pass=? WHERE sno=?");
                pst.setInt(1,stu.getSno());
                pst.setString(2,stu.getSname());
                pst.setString(3,stu.getSex());
                pst.setString(4,stu.getBirthday());
                pst.setString(5,stu.getNation());
                pst.setString(6,stu.getGrade());
                pst.setString(7,stu.getSecoll());
                pst.setString(8,stu.getSpec());
                pst.setString(9,stu.getSclass());
                if(stu.getPass()==null){
                    pst.setInt(10,oldsno);
                }else{
                    pst.setString(10,stu.getPass());
                    pst.setInt(11,oldsno);
                }
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(int sno){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from student where sno=?");
                pst.setInt(1,sno);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
