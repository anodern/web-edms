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
    <title>添加教室 - 教务管理系统</title>
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
                <li><a href="">教室编辑</a></li>
                <li><a href="">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">

                <div class="content-float">
                    <h2>增加教室</h2>
                    <hr>
                    <form name="frm1" action="classroom?action=add" method="post">
                        <div class="box">
                            <label class="i-label">*教室名</label>
                            <input type="text" name="rno" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*容量</label>
                            <input type="text" name="capacity" class="i-text">
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
