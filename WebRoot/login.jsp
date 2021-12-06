<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>农业园导览及农产品销售系统 - 后台登录</title>
        <link href="htstyle/css/login.css" rel="stylesheet" type="text/css" />
        <script src="htstyle/js/jquery-2.2.0.min.js"></script>
        <script>
            function submitForm() {
                var frm = $("#loginForm");
                var form = $(frm);
                var input;
                input = form.find("#username");
                if (input.val() == "") {
                    alert("请填写账号");
                    return false;
                }
                input = form.find("#password");
                if (input.val() == "") {
                    alert("请填写密码");
                    return false;
                }
                input = form.find("#pagerandom");
                if (input.val() == "") {
                    alert("请填写验证码");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body style="overflow: hidden">
        <div class="main">
            <div class="login-form">
                <h1>农业园导览及农产品销售系统</h1>
                <div class="head"><img src="htstyle/img/adminLogin.png" alt="" /></div>

                <form id="loginForm" name="loginForm" action="login?ac=adminlogin&a=a" method="post" onsubmit="return submitForm()">
                    <div class="login-form-item">
                        <label for="username">用户名：</label>
                        <input type="text" class="login_input" id="username" name="username" placeholder="" />
                    </div>
                    <div class="login-form-item">
                        <label for="password">密码：</label>
                        <input type="password" class="login_input" name="pwd" id="password" />
                    </div>
                    <div class="login-form-item">
                        <label for="pagerandom"> 验证码： </label>
                        <div class="pagerandom">
                            <img src="image.jsp" onClick="this.src='image.jsp?time='+new Date().getTime();" alt="" />
                            <input id="pagerandom" name="pagerandom" type="text" />
                        </div>
                    </div>

                    <select id="sys" name="cx">
                        <option value="管理员">管理员</option>
                    </select>

                    <div class="submit">
                        <input type="submit" value="登录" onclick="return submitForm()" id="btn_login" class="butSyley" />
                        <!-- <input type="checkbox" id="rememberMe"/><label class="lableStyle">记住密码</label>
                <a href="#" class="aSyle">忘记密码?</a>-->
                    </div>
                </form>
            </div>
        </div>
        <div class="loginBtn">
            <p>项目：农业园导览及农产品销售系统</p>
        </div>
    </body>
</html>
