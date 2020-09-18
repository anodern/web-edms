package com.anodern.teach.servlet;

import com.anodern.teach.CselDB;
import com.anodern.teach.PageBean;
import com.anodern.teach.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(value = "/score",name = "ScoreServlet")
public class ScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
    
        String action = request.getParameter("action");
        String year = request.getParameter("year");
        User u = (User)request.getSession().getAttribute("user");
    
        if(action==null) action="";
        if(year==null) year="20201";
        if(u==null) return;
    
        if(action.equals("add")){
            String cno = request.getParameter("cno");
            CselDB entityDB = new CselDB();
            List a = entityDB.getList("SELECT * FROM viewCsel WHERE tno=? AND cno=? AND year=?", new String[]{u.getId(),cno, year});
            entityDB.close();
            request.setAttribute("score",a);
    
            request.getRequestDispatcher("tscore-detail.jsp").forward(request, response);
        }else if(action.equals("editok")){
        
        }else{
            switch(u.getLevel()){
                case 1:{
                    //教师
                    CselDB entityDB = new CselDB();
                    List a = entityDB.getList("SELECT * FROM viewCsel WHERE tno=? AND year=? GROUP BY cno", new String[]{u.getId(), year});
                    entityDB.close();
                    request.setAttribute("courses",a);
            
                    request.getRequestDispatcher("tscore.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    //学生
                    CselDB entityDB = new CselDB();
                    
                    List a = entityDB.getList("SELECT * FROM viewCsel WHERE sno=? AND year=?", new String[]{u.getId(), year});
                    entityDB.close();
                    request.setAttribute("score",a);
            
                    request.getRequestDispatcher("sscore.jsp").forward(request, response);
                }
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
