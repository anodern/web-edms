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
    <title>选课管理 - 教学管理系统</title>
    <link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>

    <div class="content">
        <div class="sidebar">
            <ul class="par">
                <li><a href="csel">选课浏览</a></li>
                <li><a href="scsel-detail.jsp">选课详情</a></li>
                <li><a href="scsel-result.jsp">已选课程</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div class="search-layer">
                <form>
                    <div class="col-input">
                        <label>课程名</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>时间</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>年级</label>
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
                    <a class="btn" href="msel-put.jsp">新增</a>
                    <a class="btn">修改</a>
                    <a class="btn">删除</a>
                </div>

                <div class="content-table">
                    <table>
                        <tr>
                            <th>选课号</th>
                            <th>选课名</th>
                            <th>学生范围</th>
                            <th>课程范围</th>
                            <th>上课时间</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>操作</th>
                        </tr>

                        <%--@elvariable id="pageBean" type="com.anodern.teach.PageBean"--%>
                        <%--@elvariable id="year" type="java.lang.String"--%>
                        <c:forEach var="entity" items="${pageBean.data}" varStatus="vs">
                        <tr>
                            <td><c:out value="${entity.id}" /></td>
                            <td><c:out value="${entity.name}" /></td>
                            <td><c:out value="${entity.srange}" /></td>
                            <td><c:out value="${entity.crange}" /></td>
                            <td><c:out value="${entity.time}" /></td>
                            <td><c:out value="${entity.start}" /></td>
                            <td><c:out value="${entity.end}" /></td>
                            <td><a class="btn-s" href="csel?action=s-sel&id=<c:out value="${entity.id}"/>&year=<c:out value="${year}"/>">选课</a>&nbsp;&nbsp;
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
