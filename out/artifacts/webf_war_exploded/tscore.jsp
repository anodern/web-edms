<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/4
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>成绩查询 - 教学管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>
    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="score">成绩查询</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-table">
                    <table>
                        <tr>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>成绩</th>
                        </tr>

                        <%
                            List lst = (List)request.getAttribute("score");
                            for(int i = 0;i < lst.size();i++){
                                Map a = (Map)lst.get(i);
                                out.println("<tr>");
                                out.println("<td>"+a.get("sno")+"</td>");
                                out.println("<td>"+a.get("sname")+"</td>");
                                out.println("<td><input type=\"text\" size=\"5\" name=\""+a.get("sno")+"\"></td>");
                                out.println("</tr>");
                            }
                        %>
                    </table>
                </div>

                <%--页号--%>
                <div class="pager">
                    每页${pageBean.pageSize}行  共${pageBean.totalRows}行  页数 ${pageBean.curPage}/${pageBean.totalPages}
                    <c:choose>
                        <c:when test="${pageBean.curPage==1}">
                            <span class="btn-s-d">首页</span>
                            <span class="btn-s-d">上一页</span>
                        </c:when>
                        <c:otherwise>
                            <a class="btn-s" href="student?page=1">首页</a>
                            <a class="btn-s" href="student?page=${pageBean.curPage-1}">上一页</a>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${pageBean.curPage==pageBean.totalPages}">
                            <span class="btn-s-d">下一页</span>
                            <span class="btn-s-d">尾页</span>
                        </c:when>
                        <c:otherwise>
                            <a class="btn-s" href="student?page=${pageBean.curPage+1}">下一页</a>
                            <a class="btn-s" href="student?page=${pageBean.totalPages}">尾页</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>