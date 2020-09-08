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

@WebServlet(value = "/classroom",name = "ClassroomServlet")
public class ClassroomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        String action = request.getParameter("action");
        if(action==null) action="";
        switch(action){
            case "add":{
                String rno= request.getParameter("rno");
                String capacity=request.getParameter("capacity");
                
                Classroom room=new Classroom();
                room.setRno(rno);
                room.setCapacity(Integer.parseInt(capacity));
                
                ClassroomDB classroomDB=new ClassroomDB();
                classroomDB.add(room);
                classroomDB.close();
                response.sendRedirect("classroom");
                break;
            }
            case "edit":{
                System.out.println("编辑");
                
                ClassroomDB classroomDB=new ClassroomDB();
                Classroom c=classroomDB.getEntity(request.getParameter("rno"));
                request.setAttribute("classroom", c);
                classroomDB.close();
                
                request.getRequestDispatcher("classroom-edit.jsp").forward(request, response);
                break;
            }
            case "editre":{
                System.out.println("编辑提交");
    
                String oldrno=request.getParameter("oldrno");
                String rno=request.getParameter("rno");
                int capacity;
                try{
                    capacity= Integer.parseInt(request.getParameter("capacity"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                
                Classroom room=new Classroom();
                room.setRno(rno);
                room.setCapacity(capacity);
                
                ClassroomDB classroomDB=new ClassroomDB();
                classroomDB.update(oldrno,room);
                classroomDB.close();
                response.sendRedirect("classroom");
                break;
            }
            case "del":{
                System.out.println("删除");
                
                String rno=request.getParameter("rno");
                
                ClassroomDB classroomDB=new ClassroomDB();
                int a=classroomDB.delete(rno);
                classroomDB.close();
                
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='classroom';</script>");
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
                ClassroomDB roomDB = new ClassroomDB();
                // 将PageBean放入到request中转发
                request.setAttribute("pageBean", roomDB.getPage(curPage));
                roomDB.close();
                request.getRequestDispatcher("mclassroom.jsp").forward(request, response);
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
