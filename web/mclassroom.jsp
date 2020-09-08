<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>教室管理 - 教学管理系统</title>
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
                <li><a href="classroom-edit.jsp">教室编辑</a></li>
                <li><a href="classroom-edits.jsp">批量编辑</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div class="search-layer">
                <form>
                    <div class="col-input">
                        <label>教室名称</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>教室容量</label>
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
                    <a class="btn" href="classroom-add.jsp">新增</a>
                    <a class="btn">修改</a>
                    <a class="btn">删除</a>
                </div>

                <div class="content-table">
                    <table>
                        <tr>
                            <th>教室名</th>
                            <th>教室容量</th>
                            <th>教室类型</th>
                            <th>操作</th>
                        </tr>

                        <%--@elvariable id="pageBean" type="com.anodern.teach.PageBean"--%>
                        <c:forEach var="course" items="${pageBean.data}" varStatus="vs">
                        <tr>
                            <td><c:out value="${course.rno}"/></td>
                            <td><c:out value="${course.capacity}"/></td>
                            <td>普通</td>
                            <td><a href="classroom?action=edit&rno=<c:out value="${course.rno}"/>">编辑</a>&nbsp;&nbsp;
                                <a href="classroom?action=del&rno=<c:out value="${course.rno}"/>">删除</a>
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
                            <a class="btn-s" href="classroom?page=1">首页</a>
                            <a class="btn-s" href="classroom?page=${pageBean.curPage-1}">上一页</a>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${pageBean.curPage==pageBean.totalPages}">
                            <span class="btn-s-d">下一页</span>
                            <span class="btn-s-d">尾页</span>
                        </c:when>
                        <c:otherwise>
                            <a class="btn-s" href="classroom?page=${pageBean.curPage+1}">下一页</a>
                            <a class="btn-s" href="classroom?page=${pageBean.totalPages}">尾页</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>