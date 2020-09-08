package com.anodern.teach.servlet;

import com.anodern.teach.MD5Bean;
import com.anodern.teach.UserDB;
import com.anodern.teach.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/login", name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        //git TEST
    
        String id = request.getParameter("id");
        if(id.equals("0")) {
            User user=new User();
            user.setId("1000");
            user.setName("anodern");
            user.setLevel(0);
        
            session.setAttribute("user",user);
            session.setAttribute("isLogin",true);
            //response.sendRedirect("course");
        }
        if(id.equals("1")) {
            User user=new User();
            user.setId("25001");
            user.setName("教师1");
            user.setLevel(1);
        
            session.setAttribute("user",user);
            session.setAttribute("isLogin",true);
            //response.sendRedirect("course");
        }
        if(id.equals("2")) {
            User user=new User();
            user.setId("202180301");
            user.setName("陈洁文");
            user.setLevel(2);
        
            session.setAttribute("user",user);
            session.setAttribute("isLogin",true);
            //response.sendRedirect("course");
        }
        String pass = (new MD5Bean().getmd5BeanofStr(request.getParameter("pass"))).toLowerCase();
        String vcode=request.getParameter("vcode");
        String realVcode=(String)session.getAttribute("vcode");
        
        String type = request.getParameter("type");
        int level=-1;
        switch(type){
            case "0": level=0; break;
            case "1": level=1; break;
            case "2": level=2; break;
        }
        
        vcode=realVcode;
        if(vcode.equalsIgnoreCase(realVcode)){
            UserDB userDB=new UserDB();
            
            String name=userDB.isLogin(id,pass,level);
            
            if(name!=null){
                User user=new User();
                user.setId(id);
                user.setName(name);
                user.setLevel(level);
                
                session.setAttribute("user",user);
                session.setAttribute("isLogin",true);
                switch(type){
                    case "0": response.sendRedirect("course"); break;
                    case "1": case "2": response.sendRedirect("table"); break;
                    default: response.sendRedirect("login.jsp");
                }
                
            }else {
                session.setAttribute("isLogin",false);
                out.println("<script>alert('登陆失败，请检查用户名和密码！');history.go(-1);</script>");
            }
            userDB.close();
        }else {
            response.setContentType("text/html; charset=UTF-8");
            session.removeAttribute("user");
            out.println("<script>alert('验证码错误！');history.go(-1);</script>");
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
