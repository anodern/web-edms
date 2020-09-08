package com.anodern.teach;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDB extends DBConn {
    public String isLogin(String id,String pass,int level){
        if(conn !=null){
            try{
                PreparedStatement pst=null;
                System.out.println("用户"+level);
                System.out.println("id"+id);
                System.out.println("密码"+pass);
                switch(level){
                    case 0: pst=conn.prepareStatement("select * from admin where no=? and pass=?"); break;
                    case 1: pst=conn.prepareStatement("select * from teacher where tno=? and pass=?"); break;
                    case 2: pst=conn.prepareStatement("select * from student where sno=? and pass=?"); break;
                    default:return null;
                }
                
                pst.setString(1,id);
                pst.setString(2,pass);
                
                ResultSet rs=pst.executeQuery();
                rs.next();
                
                String name;
                try{
                    switch(level){
                        case 0: name=rs.getString("name"); break;
                        case 1: name=rs.getString("tname"); break;
                        case 2: name=rs.getString("sname"); break;
                        default: name=null;
                    }
                }catch(SQLException e){
                    name=null;
                }
                rs.close();
                System.out.println("已登录:"+name);
                return name;
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return null;
    }
}
