
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
    <title>编辑选课 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="csel">选课浏览</a></li>
                <li><a href="csel?action=result">选课结果</a></li>
                <li><a href="msel-put.jsp">发布选课</a></li>
                <li><a href="msel-adds.jsp">批量发布</a></li>
                <li><a href="">编辑选课</a></li>
                <li><a href="msel-do.jsp">安排上课</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-float">
                    <h2>编辑选课</h2>
                    <hr>
                    <%--@elvariable id="entity" type="com.anodern.teach.entity.SelectRange"--%>
                    <form name="frm1" action="csel?action=editok&id=${entity.id}" method="post">
                        <div class="box">
                            <label class="i-label">*选课ID</label>
                            <input type="text" name="id" class="i-text" value="${entity.id}" disabled="disabled">
                        </div>
                        <div class="box">
                            <label class="i-label">*选课名</label>
                            <input type="text" name="name" class="i-text" value="${entity.name}">
                        </div>
                        <div class="box">
                            <label class="i-label">*学生班级</label>
                            <input type="text" name="srange" class="i-text" value="${entity.srange}">
                        </div>
                        <div class="box">
                            <label class="i-label">*课程范围</label>
                            <input type="text" name="crange" class="i-text" value="${entity.crange}">
                        </div>
                        <div class="box">
                            <label class="i-label">*上课时间</label>
                            <input type="text" name="time" class="i-text" value="${entity.time}">
                        </div>
                        <div class="box">
                            <label class="i-label">*开始时间</label>
                            <input type="date" name="start" class="i-text" value="${entity.start}">
                        </div>
                        <div class="box">
                            <label class="i-label">*结束时间</label>
                            <input type="date" name="end" class="i-text" value="${entity.end}">
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