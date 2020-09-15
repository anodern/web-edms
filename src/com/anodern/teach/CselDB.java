package com.anodern.teach;

import com.anodern.teach.entity.Select;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CselDB extends DBConn {
    public PageBean getPage(int curPage){
        String sql = "select * from csel";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public Select getEntity(String sno,String cno){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from csel where sno=? AND cno=?");
            psmt.setString(1,sno);
            psmt.setString(2,cno);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
            
            Select stu=new Select();
            stu.setSno(rs.getInt("sno"));
            stu.setCno(rs.getInt("cno"));
            stu.setTno(rs.getInt("tno"));
            stu.setRno(rs.getString("rno"));
            stu.setYear(rs.getString("year"));
            stu.setTime(rs.getString("time"));
            stu.setWeek(rs.getString("week"));
            stu.setScore(rs.getString("score"));
            rs.close();
            
            return stu;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(Select entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into csel" +
                        "(sno,cno,tno,rno,year,time,week,score) values(?,?,?,?,?,?,?,?)");
                pst.setInt(1,entity.getSno());
                pst.setInt(2,entity.getCno());
                pst.setInt(3,entity.getTno());
                pst.setString(4,entity.getRno());
                pst.setString(5,entity.getYear());
                pst.setString(6,entity.getTime());
                pst.setString(7,entity.getWeek());
                pst.setString(8,entity.getScore());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(int oldsno, Select entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("UPDATE csel SET sno=?,cno=?,tno=?,rno=?," +
                        "year=?,time=?,week=?,score=? WHERE sno=?");
                pst.setInt(1,entity.getSno());
                pst.setInt(2,entity.getCno());
                pst.setInt(3,entity.getTno());
                pst.setString(4,entity.getRno());
                pst.setString(5,entity.getYear());
                pst.setString(6,entity.getTime());
                pst.setString(7,entity.getWeek());
                pst.setString(8,entity.getScore());

                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(int sno,int cno){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from csel where sno=? AND cno=?");
                pst.setInt(1,sno);
                pst.setInt(2,cno);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
