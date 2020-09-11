<%@ page import="com.anodern.teach.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title></title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="top">
    <div class="top-left">
        <a href="index.jsp">
            <img src="image/logo.png">
        </a>
    </div>
    <div class="top-middle">
<%
    User u = (User)session.getAttribute("user");
    if(u!=null)
        if(u.getLevel()==0){
%>
        <div class="toptag">
            <a href="course">课程管理</a>
        </div>
        <div class="toptag">
            <a href="classroom">教室管理</a>
        </div>
        <div class="toptag">
            <a href="csel">选课管理</a>
        </div>
        <div class="toptag">
            <a href="student">学生管理</a>
        </div>
        <div class="toptag">
            <a href="teacher">教师管理</a>
        </div>
<% }else if(u.getLevel()==1){ %>
        <div class="toptag">
            <a href="table">课表查询</a>
        </div>
        <div class="toptag">
            <a href="score">成绩管理</a>
        </div>
<%
    }else if(u.getLevel()==2){
%>
        <div class="toptag">
            <a href="csel">选课管理</a>
        </div>
        <div class="toptag">
            <a href="table">课表查询</a>
        </div>
        <div class="toptag">
            <a href="score">成绩查询</a>
        </div>
<%
    }
%>
    </div>
    <div class="top-right">
        <p>
        <%
            if(u!=null){
                out.print(u.getName() + "，欢迎使用教务系统！");
                out.print("&nbsp;&nbsp;<a href=\"login?action=quit\" style=\"color: crimson;\">注销</a>");
            }else{
                out.print("请登录");
            }
        %>
        </p>
    </div>
</div>
<div class="bottominfo">
    教务管理系统<br>©️2020 anodern.com<br>
    <a href="http://beian.miit.gov.cn/" target="_blank">苏ICP备20014971号</a>
</div>
</body>
</html>
