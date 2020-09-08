package com.anodern.teach.servlet;

import com.anodern.teach.CselDB;
import com.anodern.teach.entity.Table;
import com.anodern.teach.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/table",name = "tableServlet")
public class TableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
    
        String year = request.getParameter("year");
        User u = (User)request.getSession().getAttribute("user");
        
        if(year==null) year="20201";
        if(u==null) return;
        
        switch(u.getLevel()){
            case 1:{
                //教师查看
        
                CselDB entityDB = new CselDB();
                List a = entityDB.getList("SELECT * FROM viewCsel WHERE tno=? AND year=?",new String[]{u.getId(),year});
                entityDB.close();
                
                String[][] tb=new String[7][11];
                for(Object o : a){
                    Map t = (Map)o;
                    String cname = (String)t.get("cname");
                    String rno = (String)t.get("rno");
                    String[] timesp = ((String)t.get("time")).split(";");
                    for(String s : timesp){
                        String[] timespsp = s.split(",");
                        String[] clts = timespsp[1].split("-");
                        for(int k = Integer.parseInt(clts[0]);k <= Integer.parseInt(clts[1]);k++){
                            tb[getWeek(timespsp[0])][k - 1] = cname + "<br>" + rno;
                        }
                    }
                }
                
                for(int i = 0;i < 7;i++){
                    for(int j = 0;j < 11;j++){
                        if(tb[i][j]==null) tb[i][j]=" <br> <br> ";
                    }
                }
    
                request.setAttribute("table", tb);
                request.getRequestDispatcher("stable.jsp").forward(request, response);
                break;
            }
            case 2:{
                //学生查看
                
                CselDB entityDB = new CselDB();
                List a = entityDB.getList("SELECT * FROM viewCsel WHERE sno=? AND year=?",new String[]{u.getId(),year});
                entityDB.close();
                
                String[][] tb=new String[7][11];
                for(Object o : a){
                    Map t = (Map)o;
                    String cname = (String)t.get("cname");
                    String tname = (String)t.get("tname");
                    String rno = (String)t.get("rno");
                    String[] timesp = ((String)t.get("time")).split(";");
                    for(String s : timesp){
                        String[] timespsp = s.split(",");
                        String[] clts = timespsp[1].split("-");
                        for(int k = Integer.parseInt(clts[0]);k <= Integer.parseInt(clts[1]);k++){
                            tb[getWeek(timespsp[0])][k - 1] = cname + "<br>" + rno + "<br>" + tname;
                        }
                    }
                }
    
                for(int i = 0;i < 7;i++){
                    for(int j = 0;j < 11;j++){
                        if(tb[i][j]==null) tb[i][j]=" <br> <br> ";
                    }
                }
    
                request.setAttribute("table", tb);
                request.getRequestDispatcher("stable.jsp").forward(request, response);
                break;
            }
        }
    }
    
    private int getWeek(String a){
        switch(a){
            case "一":return 0;
            case "二":return 1;
            case "三":return 2;
            case "四":return 3;
            case "五":return 4;
            case "六":return 5;
            case "七":
            case "日":
                return 6;
        }
        return 6;
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
