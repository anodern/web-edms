<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="stu" type="com.anodern.teach.entity.Student"--%>
<html>
<head>
    <title>修改学生 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="student">学生浏览</a></li>
                <li><a href="mstudent-add.jsp">新增学生</a></li>
                <li><a href="mstudent-adds.jsp">批量新增</a></li>
                <li><a href="mstudent-edit.jsp">编辑学生</a></li>
                <li><a href="mstudent-edits.jsp">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-float">
                    <h2>修改学生</h2>
                    <hr>
                    <form name="frm1" action="student?action=editre&oldsno=${stu.sno}" method="post">
                        <div class="box">
                            <label class="i-label">原学号</label>
                            <input type="text" name="oldsno" class="i-text" value="${stu.sno}" disabled="disabled">
                        </div>
                        <div class="box">
                            <label class="i-label">*学号</label>
                            <input type="text" name="sno" class="i-text" value="${stu.sno}"  autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*姓名</label>
                            <input type="text" name="sname" class="i-text" value="${stu.sname}"  autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*性别</label>
                            <input type="text" name="sex" class="i-text" value="${stu.sex}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*生日</label>
                            <input type="date" name="birthday" class="i-text" value="${stu.birthday}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*民族</label>
                            <input type="text" name="nation" class="i-text" value="${stu.nation}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*年级</label>
                            <input type="text" name="grade" class="i-text" value="${stu.grade}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*学院</label>
                            <input type="text" name="secoll" class="i-text" value="${stu.secoll}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*专业</label>
                            <input type="text" name="spec" class="i-text" value="${stu.spec}" autocomplete="off">
                        </div>
                        <div class="box">
                            <label class="i-label">*班级</label>
                            <input type="text" name="sclass" class="i-text" value="${stu.sclass}" autocomplete="off">
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
