<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加教师 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="teacher">教师浏览</a></li>
                <li><a href="mteacher-add.jsp">新增教师</a></li>
                <li><a href="mteacher-adds.jsp">批量新增</a></li>
                <li><a href="mteacher-edit.jsp">编辑教师</a></li>
                <li><a href="mteacher-edits.jsp">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-float">
                    <h2>增加教师</h2>
                    <hr>
                    <form name="frm1" action="teacher?action=add" method="post">
                        <div class="box">
                            <label class="i-label">*工号</label>
                            <input type="text" name="tno" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*姓名</label>
                            <input type="text" name="tname" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*性别</label>
                            <input type="text" name="sex" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*生日</label>
                            <input type="date" name="birthday" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*学院</label>
                            <input type="text" name="secoll" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*电话</label>
                            <input type="text" name="phone" class="i-text">
                        </div>
                        <div class="box">
                            <span class="btns">
                                <input class="btn" type="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="btn" type="reset" value="清  除">
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
