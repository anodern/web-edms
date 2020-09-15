<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
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
                    <%--@elvariable id="c" type="com.anodern.teach.entity.SelectRange"--%>
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
