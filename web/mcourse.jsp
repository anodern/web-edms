<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/4
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课程管理 - 教学管理系统</title>
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
                <li><a href="mcourse-edit.jsp">课程编辑</a></li>
                <li><a href="editcourses.jsp">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div class="search-layer">
                <form>
                    <div class="col-input">
                        <label>课程名称</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>课程学院</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>课程属性</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <input type="submit" class="btn" name="cname" value="查询">
                        <input type="reset" class="btn" name="cname" value="重置">
                    </div>

                </form>
            </div>

            <%--主要内容--%>
            <div class="main-content-main">
                <div class="bottons">
                    <a class="btn" href="mcourse-add.jsp">新增</a>
                    <a class="btn">修改</a>
                    <a class="btn">删除</a>
                </div>

                <div class="content-table">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>课程名</th>
                            <th>课程类型</th>
                            <th>学分</th>
                            <th>先修课程</th>
                            <th>开课学院</th>
                            <th>操作</th>
                        </tr>

                        <%--@elvariable id="pageBean" type="com.anodern.teach.PageBean"--%>
                        <c:forEach var="course" items="${pageBean.data}" varStatus="vs">
                        <tr>
                            <td><c:out value="${course.cno}"/></td>
                            <td><c:out value="${course.cname}"/></td>
                            <td><c:out value="${course.type}"/></td>
                            <td><c:out value="${course.credit}"/></td>
                            <td><c:out value="${course.first}"/></td>
                            <td>开课学院</td>
                            <td><a href="course?action=edit&cno=<c:out value="${course.cno}"/>">编辑</a>&nbsp;&nbsp;
                                <a href="course?action=del&cno=<c:out value="${course.cno}"/>">删除</a>
                            </td>
                        <tr>
                            </c:forEach>
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
                            <a class="btn-s" href="course?page=1">首页</a>
                            <a class="btn-s" href="course?page=${pageBean.curPage-1}">上一页</a>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${pageBean.curPage==pageBean.totalPages}">
                            <span class="btn-s-d">下一页</span>
                            <span class="btn-s-d">尾页</span>
                        </c:when>
                        <c:otherwise>
                            <a class="btn-s" href="course?page=${pageBean.curPage+1}">下一页</a>
                            <a class="btn-s" href="course?page=${pageBean.totalPages}">尾页</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
