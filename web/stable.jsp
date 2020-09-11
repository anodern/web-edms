<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/4
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课表查询 - 教学管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>
    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="table">课表查询</a></li>
            </ul>
        </div>
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main">
                <div class="content-table">
                    <table>
                        <tr>
                            <th>星期一</th>
                            <th>星期二</th>
                            <th>星期三</th>
                            <th>星期四</th>
                            <th>星期五</th>
                            <th>星期六</th>
                            <th>星期日</th>
                        </tr>
                        <%
                            String[][] tb = (String[][])request.getAttribute("table");
                            for(int i = 0;i < 11;i++){
                                out.println("<tr>");
                                for(int j = 0;j < 7;j++){
                                    if(!tb[j][i].equals(""))
                                        out.println(tb[j][i]);
                                }
                                out.println("</tr>");
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>