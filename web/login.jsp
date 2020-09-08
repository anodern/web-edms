<%--
  Created by IntelliJ IDEA.
  User: anodern
  Date: 2020/6/10
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录 - 教学管理系统</title>
    <script type="text/javascript">
        function change() {
            document.getElementById("validate").src="valid?random="+Math.random();
        }
    </script>
</head>
<body>
<div class="viewport">
    <%@ include file="frame-top.jsp" %>
    <div class="content">
        <div class="main-content">
            <%--主要内容--%>
            <div class="main-content-main" style="background: url('image/bg.png') no-repeat;">

                <div class="content-float" style="position: absolute; top: 20%;left: 33%;background-color: rgba(223,227,222,0.89)">
                    <h2>用户登录</h2>
                    <hr>
                    <form name="frm1" action="login" method="post" style="margin-bottom: 0">
                        <div class="box" style="margin-top: 13px">
                            <label class="i-label">*账号</label>
                            <input type="text" name="id" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*密码</label>
                            <input type="password" name="pass" class="i-text">
                        </div>
                        <div class="box">
                            <label class="i-label">*验证码</label>
                            <input type="text" name="vcode" class="i-text" style="width: 120px">
                            <span>
                                <img style="float:right;top:0;position:absolute;right:5px;" src="valid" id="validate" onclick="change()" alt="">
                            </span>
                        </div>
                        <div class="box">
                            <label class="i-label">*类型</label>
                            <span class="i-text">
                                <label>
                                <input type="radio" name="type" value="2" checked>学生
                                </label>
                                <label>
                                <input type="radio" name="type" value="1">教师
                                </label>
                                <label>
                                <input type="radio" name="type" value="0">教务
                                </label>
                            </span>
                        </div>

                        <div class="box">
                            <span class="btns">
                                <input class="btn" type="submit" value="登  录">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="btn" type="reset" value="清  除">
                            </span>
                        </div>
                        <hr>
                        <p>
                            1.请用户使用工号或学号做为账号，密码为信息门户密码。
                        </p>
                        <p>
                            2.密码找回方法，通过网址内方法，可以自助激活邮件和修改信息门户密码。
                        </p>
                        <p>
                            3.建议使用Chrome或火狐浏览器。
                        </p>
                        <p style="text-align: center;margin-bottom: 0;margin-top: 16px">
                            教务管理系统  ©️2020 anodern.com<br>
                            <a href="http://beian.miit.gov.cn/" target="_blank">苏ICP备20014971号</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
