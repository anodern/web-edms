package com.anodern.teach.servlet;

import com.anodern.teach.MD5Bean;
import com.anodern.teach.UserDB;
import com.anodern.teach.entity.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/login", name = "LoginServlet")
public class LoginServlet extends HttpServlet {;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
    
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if(action!=null && action.equals("quit")){
            //退出登录
            session.removeAttribute("user");
            session.setAttribute("isLogin",false);
    
            response.sendRedirect("login.jsp");
            return;
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
        
        //TODO:无视验证码、快速登陆
        vcode=realVcode;
        boolean fl=false;
        if(pass.equals("") || id.equals("")) fl=true;
        if(fl){
            User user=new User();
            user.setLevel(level);
            session.setAttribute("isLogin",true);
            session.setAttribute("user",user);
            
            switch(type){
                case "0":{
                    user.setId("1000");
                    user.setName("教务");
                    response.sendRedirect("course");
                } break;
                case "1":{
                    user.setId("25001");
                    user.setName("教师1");
                    response.sendRedirect("table");
                }  break;
                case "2":{
                    user.setId("202180301");
                    user.setName("某学生");
                    response.sendRedirect("table");
                } break;
                default: response.sendRedirect("login.jsp");
            }
            return;
        }
        
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
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request,response);
    }
}
