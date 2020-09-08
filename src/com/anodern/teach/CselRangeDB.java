package com.anodern.teach;

import com.anodern.teach.entity.SelectRange;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CselRangeDB extends DBConn {
    public PageBean getPage(int curPage){
        String sql = "select * from cselRange";
        PageBean pageBean = getPageBean(sql, null, curPage);
        return pageBean;
    }
    
    public SelectRange getEntity(String id){
        try{
            PreparedStatement psmt = conn.prepareStatement("select * from cselRange where id=?");
            psmt.setString(1,id);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            if(rs.getRow()<1) return null; //获得结果长度
            rs.first();
    
            SelectRange entity=new SelectRange();
            entity.setId(rs.getString("id"));
            entity.setName(rs.getString("name"));
            entity.setSrange(rs.getString("srange"));
            entity.setCrange(rs.getString("crange"));
            entity.setTime(rs.getString("time"));
            entity.setStart(rs.getString("start"));
            entity.setEnd(rs.getString("end"));
            rs.close();
            
            return entity;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    
    public int add(SelectRange entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("insert into cselRange" +
                        "(name,srange,crange,time,start,end) values(?,?,?,?,?,?)");
                pst.setString(1,entity.getName());
                pst.setString(2,entity.getSrange());
                pst.setString(3,entity.getCrange());
                pst.setString(4,entity.getTime());
                pst.setString(5,entity.getStart());
                pst.setString(6,entity.getEnd());
                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int update(SelectRange entity){
        int result=0;
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("UPDATE cselRange SET name=?,srange=?," +
                        "crange=?,time=?,start=?,end=? WHERE id=?");
                pst.setString(1,entity.getName());
                pst.setString(2,entity.getSrange());
                pst.setString(3,entity.getCrange());
                pst.setString(4,entity.getTime());
                pst.setString(5,entity.getStart());
                pst.setString(6,entity.getName());
                pst.setString(7,entity.getId());

                result=pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return result;
    }
    
    public int delete(String id){
        if(conn!=null){
            try{
                PreparedStatement pst=conn.prepareStatement("delete from cselRange where id=?");
                pst.setString(1,id);
                return pst.executeUpdate();
            }catch(SQLException sqle){
                System.err.println(sqle.getMessage());
            }
        }
        return -1;
    }
}
