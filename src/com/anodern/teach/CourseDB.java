package com.anodern.teach;

import com.anodern.teach.entity.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class CourseDB extends DBConn {
    
    public PageBean getCoursePage(int curPage){
        String sql = "select * from course";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public PageBean getCoursePage(int curPage,String sql){
        return getPageBean(sql, null, curPage);
    }
    
    public int delete(int cno){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from course where cno=?");
                pst.setInt(1,cno);
                
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
    
    public Course getCourse(int cno){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from course where cno=?");
            psmt.setInt(1,cno);
            ResultSet rs=psmt.executeQuery();
    
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
            
            Course course=new Course();
            course.setCno(cno);
            course.setCname(rs.getString("cname"));
            course.setCredit(rs.getString("credit"));
            course.setType(rs.getString("type"));
            course.setFirst(rs.getString("first"));
    
            rs.close();
            return course;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public List<Course> selectCourseList(String sql){
        List<Course> courses=new LinkedList<>();
        if(conn!=null){
            try{
                Statement stmt=conn.createStatement();
                
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next()){
                    Course course=new Course();
                    course.setCno(rs.getInt("cno"));
                    course.setCname(rs.getString("cname"));
                    course.setCredit(rs.getString("credit"));
                    course.setType(rs.getString("type"));
                    course.setFirst(rs.getString("first"));
                    courses.add(course);
                }
                rs.close();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return courses;
    }
    
    
    public HashMap<Integer, Course> selectCourse(){
        HashMap<Integer,Course> courses=new HashMap<>();
        if(conn!=null){
            try{
                Statement stmt=conn.createStatement();
                
                ResultSet rs=stmt.executeQuery("select * from course");
                while(rs.next()){
                    Course course=new Course();
                    course.setCno(rs.getInt("cno"));
                    course.setCname(rs.getString("cname"));
                    course.setCredit(rs.getString("credit"));
                    course.setType(rs.getString("type"));
                    course.setFirst(rs.getString("first"));
                    courses.put(course.getCno(),course);
                }
                rs.close();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return courses;
    }
    
    public int add(Course course){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into course values(?,?,?,?,?)");
                pst.setInt(1,course.getCno());
                pst.setString(2,course.getCname());
                pst.setString(3,course.getCredit());
                pst.setString(4,course.getType());
                pst.setString(5,course.getFirst());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(int oldcno, Course course){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("UPDATE course SET cno=?,cname=?,credit=?,type=?,first=? WHERE cno=?");
                pst.setInt(1,course.getCno());
                pst.setString(2,course.getCname());
                pst.setString(3,course.getCredit());
                pst.setString(4,course.getType());
                pst.setString(5,course.getFirst());
                pst.setInt(6,oldcno);
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
}
