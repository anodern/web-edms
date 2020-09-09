package com.anodern.teach.servlet;

import com.anodern.teach.CourseDB;
import com.anodern.teach.entity.Course;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/course",name = "CourseServlet")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
    
        String action = request.getParameter("action");
        if(action==null) action="";
        switch(action){
            case "add":{
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
    
                CourseDB courseDB=new CourseDB();
                courseDB.add(course);
                courseDB.close();
                response.sendRedirect("course");
                break;
            }
            case "edit":{
                System.out.println("编辑");
                int cno;
                try{
                    cno= Integer.parseInt(request.getParameter("cno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
    
                CourseDB courseDB=new CourseDB();
                Course c=courseDB.getCourse(cno);
                request.setAttribute("course", c);
                System.out.println(c.getCname());
                courseDB.close();
                
                request.getRequestDispatcher("mcourse-edit.jsp").forward(request, response);
                break;
            }
            case "editre":{
                System.out.println("编辑提交");
                
                int cno,oldcno;
                try{
                    System.out.println(request.getParameter("cno"));
                    System.out.println(request.getParameter("oldcno"));
                    
                    cno= Integer.parseInt(request.getParameter("cno"));
                    oldcno= Integer.parseInt(request.getParameter("oldcno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
    
                String cname=request.getParameter("cname");
                String credit=request.getParameter("credit");
                String type=request.getParameter("type");
                String first=request.getParameter("first");
    
                Course course=new Course();
                course.setCno(cno);
                course.setCname(cname);
                course.setCredit(credit);
                course.setType(type);
    
                if(first!=null && !first.equals(""))
                    course.setFirst(first);
    
                CourseDB courseDB=new CourseDB();
                courseDB.update(oldcno,course);
                courseDB.close();
                response.sendRedirect("course");
                break;
            }
            case "del":{
                System.out.println("删除");
                
                String cnos=request.getParameter("cno");
                if(cnos==null || cnos.equals("")) {
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                
                int cno;
                try{
                    cno= Integer.parseInt(request.getParameter("cno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                
                CourseDB courseDB=new CourseDB();
                int a=courseDB.delete(cno);
                courseDB.close();
                
                System.out.println(a);
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='course'</script>");
                }else {
                    out.println("<script>alert('删除失败');</script>");
                }
                return;
            }
            default:{
                // 获得要显示的页数
                String page = request.getParameter("page");
                String cname = request.getParameter("cname");
                String secollname = request.getParameter("secollname");
                String ctype = request.getParameter("ctype");
                if(cname==null) cname="";
                if(secollname==null) secollname="";
                if(ctype==null) ctype="";
                
                // 默认为1，传入覆盖
                int curPage = 1;
                if (page != null && page.length() > 0) {
                    curPage = Integer.parseInt(page);
                }
                // 调用模型
                CourseDB courseDB = new CourseDB();
                
                // 将PageBean放入到request中转发
                if(cname.isEmpty() && secollname.isEmpty() && ctype.isEmpty()){
                    request.setAttribute("pageBean", courseDB.getCoursePage(curPage));
                }else{
                    StringBuilder sb=new StringBuilder("SELECT * FROM course WHERE cname LIKE '%");
                    sb.append(cname);
                    sb.append("%' AND secoll LIKE '%");
                    sb.append(secollname);
                    sb.append("%' AND type LIKE '%");
                    sb.append(ctype);
                    sb.append("%'");
                    request.setAttribute("pageBean", courseDB.getCoursePage(curPage,sb.toString()));
                }
                courseDB.close();
                request.getRequestDispatcher("mcourse.jsp").forward(request, response);
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
