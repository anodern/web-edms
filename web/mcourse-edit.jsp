<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="course" type="com.anodern.teach.entity.Course"--%>
<html>
<head>
    <title>修改课程 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>


    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="course">课程浏览</a></li>
                <li><a href="mcourse-add.jsp">课程新增</a></li>
                <li><a href="">课程编辑</a></li>
                <li><a href="">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">

                <div class="content-float">
                    <h2>修改课程</h2>
                    <hr>
                    <form name="frm1" action="course?action=editre&oldcno=${course.cno}" method="post">
                        <div class="box">
                            <label class="i-label">原课程号</label>
                            <input type="text" name="oldcno" class="i-text" value="${course.cno}" disabled="disabled">
                        </div>
                        <div class="box">
                            <label class="i-label">*课程号</label>
                            <input type="text" name="cno" class="i-text" value="${course.cno}">
                        </div>
                        <div class="box">
                            <label class="i-label">*课程名</label>
                            <input type="text" name="cname" class="i-text" value="${course.cname}">
                        </div>
                        <div class="box">
                            <label class="i-label">*学分</label>
                            <input type="text" name="credit" class="i-text" value="${course.credit}">
                        </div>
                        <div class="box">
                            <label class="i-label">*类型</label>
                            <select name="type" size="1" class="i-text">
                                <option value="必修课" <c:if test="${course.type.equals('必修课')}">selected="selected"</c:if>>必修课</option>
                                <option value="实践课" <c:if test="${course.type.equals('实践课')}">selected="selected"</c:if>>实践课</option>
                                <option value="公选课" <c:if test="${course.type.equals('公选课')}">selected="selected"</c:if>>公选课</option>
                                <option value="任选课" <c:if test="${course.type.equals('任选课')}">selected="selected"</c:if>>任选课</option>
                                <option value="限选课" <c:if test="${course.type.equals('限选课')}">selected="selected"</c:if>>限选课</option>
                                <option value="外语类" <c:if test="${course.type.equals('外语类')}">selected="selected"</c:if>>外语类</option>
                                <option value="跨专业选修" <c:if test="${course.type.equals('跨专业选修')}">selected="selected"</c:if>>跨专业选修</option>
                            </select>
                        </div>
                        <div class="box">
                            <label class="i-label">先修课程</label>
                            <input type="text" name="first" class="i-text">
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
