package com.anodern.teach.servlet;

import com.anodern.teach.*;
import com.anodern.teach.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/student",name = "StudentServlet")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
    
        String action = request.getParameter("action");
        if(action==null) action="";
        switch(action){
            case "add":{
                int sno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String sname=request.getParameter("sname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String nation=request.getParameter("nation");
                String grade=request.getParameter("grade");
                String secoll=request.getParameter("secoll");
                String spec=request.getParameter("spec");
                String sclass=request.getParameter("sclass");
            
                Student stu=new Student();
                stu.setSno(sno);
                stu.setSname(sname);
                stu.setSex(sex);
                stu.setBirthday(birthday);
                stu.setNation(nation);
                stu.setGrade(grade);
                stu.setSecoll(secoll);
                stu.setSpec(spec);
                stu.setSclass(sclass);
                stu.setPass("e10adc3949ba59abbe56e057f20f883e");
            
                StudentDB studentDB=new StudentDB();
                studentDB.add(stu);
                studentDB.close();
                response.sendRedirect("student");
                break;
            }
            case "edit":{
                System.out.println("编辑");
            
                StudentDB studentDB=new StudentDB();
                Student c=studentDB.getEntity(request.getParameter("sno"));
                request.setAttribute("stu", c);
                studentDB.close();
            
                request.getRequestDispatcher("mstudent-edit.jsp").forward(request, response);
                break;
            }
            case "editre":{
                System.out.println("编辑提交");
    
                int sno,oldsno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                    oldsno= Integer.parseInt(request.getParameter("oldsno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String sname=request.getParameter("sname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String nation=request.getParameter("nation");
                String grade=request.getParameter("grade");
                String secoll=request.getParameter("secoll");
                String spec=request.getParameter("spec");
                String sclass=request.getParameter("sclass");
    
                Student stu=new Student();
                stu.setSno(sno);
                stu.setSname(sname);
                stu.setSex(sex);
                stu.setBirthday(birthday);
                stu.setNation(nation);
                stu.setGrade(grade);
                stu.setSecoll(secoll);
                stu.setSpec(spec);
                stu.setSclass(sclass);
                //stu.setPass("e10adc3949ba59abbe56e057f20f883e");
                
                StudentDB studentDB=new StudentDB();
                studentDB.update(oldsno,stu);
                studentDB.close();
                response.sendRedirect("student");
                break;
            }
            case "del":{
                System.out.println("删除");
    
                int sno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
            
                StudentDB studentDB=new StudentDB();
                int a=studentDB.delete(sno);
                studentDB.close();
            
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='student';</script>");
                }else {
                    out.println("<script>alert('删除失败');history.go(-1);</script>");
                }
                return;
            }
            default:{
                // 获得要显示的页数
                String page = request.getParameter("page");
                // 当前的页数
                int curPage = 1;
                // 如没有传入的页数
                if (page != null && page.length() > 0) {
                    curPage = Integer.parseInt(page);
                }
                // 调用模型
                StudentDB studentDB = new StudentDB();
                // 将PageBean放入到request中转发
                request.setAttribute("pageBean", studentDB.getPage(curPage));
                studentDB.close();
                request.getRequestDispatcher("mstudent.jsp").forward(request, response);
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
