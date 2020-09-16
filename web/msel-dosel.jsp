<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
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
    <title>安排上课 - 教务管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="csel">选课浏览</a></li>
                <li><a href="csel">选课结果</a></li>
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
                    <h2>安排上课</h2>
                    <hr>
                    <%--@elvariable id="csel" type="com.anodern.teach.entity.SelectRange"--%>
                    <%--@elvariable id="id" type="java.lang.String"--%>
                    <form name="frm1" action="csel?action=do-ok&id=${id}" method="post">
                        <div class="box">
                            <label class="i-label">*上课时间</label>
                            <input type="text" name="time" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*上课周数</label>
                            <input type="text" name="week" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*教师</label>
                            <input type="text" name="tno" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*教室</label>
                            <input type="text" name="rno" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*学期</label>
                            <input type="text" name="year" class="i-text">
                        </div>

                        <table>
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>教师</th>
                                <th>教室</th>
                                <th>上课时间</th>
                                <th>上课周数</th>
                            </tr>

                            <%--@elvariable id="pageBean" type="com.anodern.teach.PageBean"--%>
                            <c:forEach var="entity" items="${csel}" varStatus="vs">
                            <tr>
                                <td><c:out value="${entity.cno}" /></td>
                                <td><c:out value="${entity.cname}" /></td>
                                <td><c:out value="${entity.srange}" /></td>
                                <td><c:out value="${entity.crange}" /></td>
                                <td><c:out value="${entity.time}" /></td>
                                <td><c:out value="${entity.start}" /></td>
                                <td><c:out value="${entity.end}" /></td>
                                <td><a href="csel?action=result&id=<c:out value="${entity.id}"/>">查看</a>&nbsp;
                                    <a href="csel?action=edit&id=<c:out value="${entity.id}"/>">编辑</a><br>
                                    <a href="csel?action=do&id=<c:out value="${entity.id}"/>">结束</a>&nbsp;
                                    <a href="csel?action=del&id=<c:out value="${entity.id}"/>">删除</a>
                                </td>
                            <tr>
                            </c:forEach>

                            <%
                                List lst = (List)request.getAttribute("score");
                                for(int i = 0;i < lst.size();i++){
                                    Map a = (Map)lst.get(i);
                                    out.println("<tr>");
                                    out.println("<td>"+a.get("cno")+"</td>");
                                    out.println("<td>"+a.get("cname")+"</td>");
                                    out.println("<td>"+a.get("year")+"</td>");
                                    String scoreA = (String)a.get("scoreA");
                                    String scoreB = (String)a.get("scoreB");
                                    String score = (String)a.get("score");
                                    out.println("<td>"+ ((scoreA==null)?"":scoreA) +"</td>");
                                    out.println("<td>"+ ((scoreB==null)?"":scoreB) +"</td>");
                                    out.println("<td>"+ ((score==null)?"":score) +"</td>");
                                    out.println("</tr>");
                                }
                            %>
                        </table>

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
