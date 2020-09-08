<%--
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
    <title>学生管理 - 教学管理系统</title>
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
            <div class="search-layer">
                <form>
                    <div class="col-input">
                        <label>姓名</label>
                        <input class="itext" name="cname" maxlength="30">
                    </div>
                    <div class="col-input">
                        <label>学院</label>
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
                    <a class="btn" href="mstudent-add.jsp">新增</a>
                    <a class="btn">修改</a>
                    <a class="btn">删除</a>
                </div>

                <div class="content-table">
                    <table>
                        <tr>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>生日</th>
                            <th>民族</th>
                            <th>年级</th>
                            <th>学院</th>
                            <th>专业</th>
                            <th>班级</th>
                            <th>操作</th>
                        </tr>

                        <%--@elvariable id="pageBean" type="com.anodern.teach.PageBean"--%>
                        <c:forEach var="entity" items="${pageBean.data}" varStatus="vs">
                        <tr>
                            <td><c:out value="${entity.sno}" /></td>
                            <td><c:out value="${entity.sname}" /></td>
                            <td><c:out value="${entity.sex}" /></td>
                            <td><c:out value="${entity.birthday}" /></td>
                            <td><c:out value="${entity.nation}" /></td>
                            <td><c:out value="${entity.grade}" /></td>
                            <td><c:out value="${entity.secoll}" /></td>
                            <td><c:out value="${entity.spec}" /></td>
                            <td><c:out value="${entity.sclass}" /></td>
                            <td><a href="student?action=edit&sno=<c:out value="${entity.sno}"/>">编辑</a>&nbsp;&nbsp;
                                <a href="student?action=del&sno=<c:out value="${entity.sno}"/>">删除</a>
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
