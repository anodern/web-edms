package com.anodern.teach.filter;

import com.anodern.teach.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(
        urlPatterns = {
                "/course","/csel","/teacher","/student","/classroom","/table","/score",
                
                "/classroom-add.jsp","/classroom-edit.jsp","/mclassroom.jsp",
                "/mcourse.jsp","/mcourse-add.jsp","/mcourse-edit.jsp",
                "/msel.jsp","/msel-do.jsp","/msel-put.jsp",
                "/mstudent.jsp","/mstudent-add.jsp","/mstudent-edit.jsp",
                "/mteacher.jsp","/mteacher-add.jsp","/mteacher-edit.jsp",
                "/scsel.jsp","/scsel-detail.jsp","/scsel-result.jsp",
                "/sscore.jsp","/stable.jsp",
                "/tscore.jsp","/ttable.jsp",
        },
        initParams = {
                @WebInitParam(name="backurl",value = "/login.jsp")
        },
        filterName = "LoginFilter")
public class LoginFilter implements Filter {
    public void destroy() {
    }
    
    String backUrl;
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //doFilter()方法的参数并不是HTTP对象，如果必要，需要将ServletResponse转换为HttpServletRequest
        //System.out.println("filter:登录检查");
        HttpServletRequest httpRequest=(HttpServletRequest)req;
        HttpServletResponse httpResponse=(HttpServletResponse)resp;
    
        //获取session对象
        HttpSession session=httpRequest.getSession();
    
        //如果没有登陆就中断过滤器链，返回到登录页面
        Boolean flag=(Boolean)session.getAttribute("isLogin");
        User u=(User)session.getAttribute("user");
        if(flag==null||!flag||u==null){
            httpResponse.sendRedirect(backUrl);
        }else{
            //下一个Filter
            chain.doFilter(req, resp);
        }
    }
    
    public void init(FilterConfig config) throws ServletException {
        //从过滤器的配置中获得初始化参数
        if(config.getInitParameter("backurl")!=null){
            backUrl=config.getInitParameter("backurl");
        }else {
            backUrl="login.jsp";
        }
    }
    
}
