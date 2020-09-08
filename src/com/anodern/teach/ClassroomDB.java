package com.anodern.teach;

import com.anodern.teach.entity.Classroom;
import com.anodern.teach.entity.Course;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class ClassroomDB extends DBConn {
    public PageBean getPage(int curPage){
        String sql = "select * from classroom";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public Classroom getEntity(String rno){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from classroom where rno=?");
            psmt.setString(1,rno);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
            
            Classroom room=new Classroom();
            room.setRno(rno);
            room.setCapacity(rs.getInt("capacity"));
    
            rs.close();
            return room;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(Classroom room){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into classroom(rno, capacity) values(?,?)");
                pst.setString(1,room.getRno());
                pst.setInt(2,room.getCapacity());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(String oldrno, Classroom room){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("UPDATE classroom SET rno=?,capacity=? WHERE rno=?");
                pst.setString(1,room.getRno());
                pst.setInt(2,room.getCapacity());
                pst.setString(3,oldrno);
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(String rno){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from classroom where rno=?");
                pst.setString(1,rno);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
