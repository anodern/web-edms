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
                <div class="box" style="line-height: 3em">
                    <input style="width: 6em;height: 2.5em" type="text" id="week" name="week" value="" onchange="change()">
                    <a type="button" id="selweek" class="btn-s" href="table?week=">确定</a>
                    <a type="button" class="btn-s" href="table">全部</a>
                    <a type="button" class="btn-s" href="table?week=1">1</a>
                    <a type="button" class="btn-s" href="table?week=2">2</a>
                    <a type="button" class="btn-s" href="table?week=3">3</a>
                    <a type="button" class="btn-s" href="table?week=4">4</a>
                    <a type="button" class="btn-s" href="table?week=5">5</a>
                    <a type="button" class="btn-s" href="table?week=6">6</a>
                    <a type="button" class="btn-s" href="table?week=7">7</a>
                    <a type="button" class="btn-s" href="table?week=8">8</a>
                    <a type="button" class="btn-s" href="table?week=9">9</a>
                    <a type="button" class="btn-s" href="table?week=10">10</a>
                    <a type="button" class="btn-s" href="table?week=11">11</a>
                    <a type="button" class="btn-s" href="table?week=12">12</a>
                    <a type="button" class="btn-s" href="table?week=13">13</a>
                    <a type="button" class="btn-s" href="table?week=14">14</a>
                    <a type="button" class="btn-s" href="table?week=15">15</a>
                    <a type="button" class="btn-s" href="table?week=16">16</a>
                    <a type="button" class="btn-s" href="table?week=17">17</a>
                    <a type="button" class="btn-s" href="table?week=18">18</a>
                    <a type="button" class="btn-s" href="table?week=19">19</a>
                    <a type="button" class="btn-s" href="table?week=20">20</a>
                </div>

                <div class="content-table">
                    <table class="clstable">
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
<script src="js/table.js"></script>
</html>