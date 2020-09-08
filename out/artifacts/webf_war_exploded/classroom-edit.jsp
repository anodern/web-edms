<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="classroom" type="com.anodern.teach.entity.Classroom"--%>
<html>
<head>
    <title>修改教室 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="classroom">教室浏览</a></li>
                <li><a href="classroom-add.jsp">教室新增</a></li>
                <li><a href="classroom-adds.jsp">批量新增</a></li>
                <li><a href="classroom-edit.jsp">教室编辑</a></li>
                <li><a href="classroom-edits.jsp">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-float">
                    <h2>修改教室</h2>
                    <hr>
                    <form name="frm1" action="classroom?action=editre&oldrno=${classroom.rno}" method="post">
                        <div class="box">
                            <label class="i-label">原教室名</label>
                            <input type="text" name="oldrno" class="i-text" value="${classroom.rno}" disabled="disabled">
                        </div>
                        <div class="box">
                            <label class="i-label">*教室名</label>
                            <input type="text" name="rno" class="i-text" value="${classroom.rno}">
                        </div>
                        <div class="box">
                            <label class="i-label">*容量</label>
                            <input type="text" name="capacity" class="i-text" value="${classroom.capacity}">
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
