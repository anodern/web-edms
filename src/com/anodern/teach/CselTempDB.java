package com.anodern.teach;

import com.anodern.teach.entity.Select;
import com.anodern.teach.entity.SelectTemp;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CselTempDB extends DBConn {
    public PageBean getPage(int curPage){
        String sql = "select * from csel";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public SelectTemp getEntity(String sno,String cno){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from cselTemp where sno=? AND cno=?");
            psmt.setString(1,sno);
            psmt.setString(2,cno);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
            
            SelectTemp stu=new SelectTemp();
            stu.setSno(rs.getString("sno"));
            stu.setCno(rs.getString("cno"));
            stu.setTno(rs.getString("tno"));
            stu.setRno(rs.getString("rno"));
            stu.setYear(rs.getString("year"));
            stu.setTime(rs.getString("time"));
            stu.setRangeId(rs.getString("rangeid"));
            rs.close();
            
            return stu;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(SelectTemp entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into cselTemp" +
                        "(sno,cno,tno,rno,year,time,rangeid) values(?,?,?,?,?,?,?)");
                pst.setString(1,entity.getSno());
                pst.setString(2,entity.getCno());
                pst.setString(3,entity.getTno());
                pst.setString(4,entity.getRno());
                pst.setString(5,entity.getYear());
                pst.setString(6,entity.getTime());
                pst.setString(7,entity.getRangeId());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(String sno,String cno,String year){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from cselTemp where sno=? AND cno=? AND year=?");
                pst.setString(1,sno);
                pst.setString(2,cno);
                pst.setString(2,year);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
