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

@WebServlet(value = "/teacher",name = "TeacherServlet")
public class TeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
    
        String action = request.getParameter("action");
        if(action==null) action="";
        switch(action){
            case "add":{
                int tno;
                try{
                    tno= Integer.parseInt(request.getParameter("tno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String tname=request.getParameter("tname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String secoll=request.getParameter("secoll");
                String phone=request.getParameter("phone");
            
                Teacher entity=new Teacher();
                entity.setTno(tno);
                entity.setTname(tname);
                entity.setSex(sex);
                entity.setBirthday(birthday);
                entity.setSecoll(secoll);
                entity.setPhone(phone);
                entity.setPass("e10adc3949ba59abbe56e057f20f883e");
            
                TeacherDB entityDB = new TeacherDB();
                entityDB.add(entity);
                entityDB.close();
                response.sendRedirect("teacher");
                break;
            }
            case "edit":{
                System.out.println("编辑");
    
                TeacherDB entityDB=new TeacherDB();
                Teacher c=entityDB.getEntity(request.getParameter("tno"));
                request.setAttribute("teacher", c);
                entityDB.close();
            
                request.getRequestDispatcher("mteacher-edit.jsp").forward(request, response);
                break;
            }
            case "editre":{
                System.out.println("编辑提交");
            
                int tno,oldtno;
                try{
                    tno= Integer.parseInt(request.getParameter("tno"));
                    oldtno= Integer.parseInt(request.getParameter("oldtno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String tname=request.getParameter("tname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String secoll=request.getParameter("secoll");
                String phone=request.getParameter("phone");
            
                Teacher entity=new Teacher();
                entity.setTno(tno);
                entity.setTname(tname);
                entity.setSex(sex);
                entity.setBirthday(birthday);
                entity.setSecoll(secoll);
                entity.setPhone(phone);
                //entity.setPass("e10adc3949ba59abbe56e057f20f883e");
            
                TeacherDB entityDB=new TeacherDB();
                entityDB.update(oldtno,entity);
                entityDB.close();
                response.sendRedirect("teacher");
                break;
            }
            case "del":{
                System.out.println("删除");
            
                int tno;
                try{
                    tno= Integer.parseInt(request.getParameter("tno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
            
                TeacherDB entityDB=new TeacherDB();
                int a=entityDB.delete(tno);
                entityDB.close();
            
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='teacher';</script>");
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
                TeacherDB entityDB = new TeacherDB();
                // 将PageBean放入到request中转发
                request.setAttribute("pageBean", entityDB.getPage(curPage));
                entityDB.close();
                request.getRequestDispatcher("mteacher.jsp").forward(request, response);
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
