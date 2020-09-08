package com.anodern.teach.servlet;

import com.anodern.teach.entity.*;
import com.anodern.teach.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/courseadd",name = "CourseAddServlet")
public class CourseAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        
        String cno= request.getParameter("cno");
        String cname=request.getParameter("cname");
        String credit=request.getParameter("credit");
        String type=request.getParameter("type");
        String first=request.getParameter("first");
    
        Course course=new Course();
        course.setCno(Integer.parseInt(cno));
        course.setCname(cname);
        course.setCredit(credit);
        course.setType(type);
        if(first!=null && !first.equals(""))
            course.setFirst(first);
    
    
        CourseDB bookDB=new CourseDB();
        bookDB.add(course);
        bookDB.close();
    
        response.sendRedirect("course");
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
