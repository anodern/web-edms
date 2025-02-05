package com.anodern.teach.servlet;

import com.anodern.teach.ColorBean;
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
import java.util.Random;

@WebServlet(value = "/table",name = "tableServlet")
public class TableServlet extends HttpServlet {
    
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        
        String year = request.getParameter("year");
        String selweek = request.getParameter("week");
        User u = (User)request.getSession().getAttribute("user");
        
        if(year==null) year="20201";
        if(selweek==null) selweek="";
        if(u==null) return;
    
        CselDB entityDB = new CselDB();
        List a;
        if(u.getLevel()==2){
            a = entityDB.getList("SELECT * FROM viewCsel WHERE sno=? AND year=?",new String[]{u.getId(),year});
        }else{
            a = entityDB.getList("SELECT * FROM viewCsel WHERE tno=? AND year=?",new String[]{u.getId(),year});
        }
        entityDB.close();
    
        String[][] tb=new String[7][11];
        for(Object o : a){
            Map t = (Map)o;
            String cname = (String)t.get("cname");
            String tname = (String)t.get("tname");
            String rno = (String)t.get("rno");
            String week = (String)t.get("week");
    
            String thisColor = ColorBean.getRandomColor();
    
            //不同时段切分   |返回：三,3-4;五,3-4
            String[] timesp = ((String)t.get("time")).split(";");
            //String ctype = (String)t.get("ctype"));
        
            for(String s : timesp){
                String[] timespsp = s.split(",");
                //星期节数切分
                //timespsp[0]=星期  timespsp[1]=节数  |三,3-4
                String[] classNumsp = timespsp[1].split("-");
                //classNumsp[0]=起始  classNumsp[1]=结束  |3-4
                int start=Integer.parseInt(classNumsp[0]);
                int end=Integer.parseInt(classNumsp[1]);
                
                String tdHTML;
                if(u.getLevel()==2){
                    //学生显示教师
                    tdHTML = String.format(
                            "<td style=\"background-color: %s\" rowspan=\"%d\">%s<br>%s<br>%s<br>%s</td>",
                            thisColor, end - start + 1, cname, rno, tname, week);
                }else{
                    //教师不显示教师
                    tdHTML = String.format(
                            "<td style=\"background-color: %s\" rowspan=\"%d\">%s<br>%s<br>%s</td>",
                            thisColor, end - start + 1, cname, tname, week);
                }
                
                if(selweek.equals("")){
                    //全部显示
                    tb[getWeek(timespsp[0])][start-1] = tdHTML;
                    for(int k=start+1; k<=end; k++)
                        tb[getWeek(timespsp[0])][k - 1] = "";
                    
                }else{
                    //单周显示
                    StringBuilder weekend= new StringBuilder(",");
                    String[] weeksp=week.split(";");
                    for(String sp:weeksp){
                        if(sp.contains("-")){
                            String[] spsp = sp.split("-");
                            for(int i=Integer.parseInt(spsp[0]); i<=Integer.parseInt(spsp[1]); i++){
                                weekend.append(i).append(",");
                            }
                        }else{
                            weekend.append(sp).append(",");
                        }
                    }
                    if(weekend.toString().contains(","+selweek+",")){
                        tb[getWeek(timespsp[0])][start-1] = tdHTML;
                    
                        for(int k=start+1; k<=end; k++){
                            tb[getWeek(timespsp[0])][k - 1] = "";
                        }
                    }
                }
            }
        }
    
        for(int i = 0;i < 7;i++)
            for(int j = 0;j < 11;j++)
                if(tb[i][j]==null) tb[i][j]="<td> <br> <br> </td>";
    
        request.setAttribute("table", tb);
        request.getRequestDispatcher("stable.jsp").forward(request, response);
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
            case "天":
                return 6;
        }
        return 6;
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
