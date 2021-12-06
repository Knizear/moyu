<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <script src="js/jquery.js"></script>
        <script src="js/jquery.validate.js"></script>
        <style type="text/css">
            <!--
            body {
                margin: 10px;
                background-repeat: repeat-x;
                background-color: #e6e2df;
            }
            -->
        </style>
    </head>
    <body>
        <style>
            * {
                box-sizing: border-box;
            }
            .form-group:after {
                display: block;
                content: " ";
                height: 0px;
                overflow: hidden;
                clear: both;
            }
            .form-group {
                padding-bottom: 5px;
                margin-bottom: 5px;
                border-bottom: 1px #494949 dashed;
            }
            .form-group .label {
                float: left;
                width: 100px;
                text-align: right;
            }
            .form-group .input {
                margin-left: 110px;
            }
            .form-group .input input {
                display: block;
                width: 95%;
                height: 30px;
                line-height: 30px;
                padding-left: 5px;
                padding-right: 5px;
            }
            .btns {
                display: inline-block;
                border: none;
                padding: 5px 10px;
                background: #0a6999;
                color: #ffffff;
                text-align: center;
            }
            .forget-title {
                text-align: center;
            }
        </style>

        <form action="forget.jsp" method="post" id="form1" name="form1">
            <h3 class="forget-title">密保找回密码</h3>
            <% if (step.equals("1")) { %>
 <% if (request.getParameter("cx") == null || request.getParameter("cx").equals("")) { %>

            <div class="form-group">
                <div class="label">用户类型</div>
                <div class="input">
                    <select name="cx">
                        <option value="用户">用户</option>
                    </select>
                </div>
            </div>
            <%} else { %>
            <input type="hidden" name="cx" value="<%= request.getParameter("cx") !=null ? request.getParameter("cx") : "" %>" />
            <%} %>

            <div class="form-group">
                <div class="label">用户名</div>
                <div class="input">
                    <input type="text" required data-msg-required="请填写用户名" name="username" value="<%= request.getParameter("username") !=null ? request.getParameter("username") : "" %>" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">&nbsp;</div>
                <div class="input">
                    <button type="submit" class="btns">下一步</button>
                </div>
            </div>
            <input type="hidden" name="step" value="2" />
            <%} else if( step.equals( "2" ) ){ %>
            <div class="form-group">
                <div class="label">问题：</div>
                <div class="input"><%= user.get("wenti") %></div>
            </div>
            <div class="form-group">
                <div class="label">答案：</div>
                <div class="input">
                    <input type="text" name="daan" required data-msg-required="请填写答案" value="" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">&nbsp;</div>
                <div class="input">
                    <button type="submit" class="btns">下一步</button>
                </div>
            </div>
            <input type="hidden" name="username" value="<%= request.getParameter("username") !=null ? request.getParameter("username") : "" %>" />
            <input type="hidden" name="cx" value="<%= request.getParameter("cx") !=null ? request.getParameter("cx") : "" %>" />
            <input type="hidden" name="step" value="3" />
            <%} else if( step.equals( "3" ) ){ %>
            <div class="form-group">
                <div class="label">新密码：</div>
                <div class="input">
                    <input type="password" required data-msg-required="请输入密码" name="xmm" id="xmm" value="" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">确认密码：</div>
                <div class="input">
                    <input type="password" equalTo="#xmm" name="xmm2" required data-msg-required="请在此输入密码" value="" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">&nbsp;</div>
                <div class="input">
                    <button type="submit" class="btns">修改密码</button>
                </div>
            </div>
            <input type="hidden" name="username" value="<%= request.getParameter("username") !=null ? request.getParameter("username") : "" %>" />
            <input type="hidden" name="cx" value="<%= request.getParameter("cx") !=null ? request.getParameter("cx") : "" %>" />
            <input type="hidden" name="step" value="4" />
            <input type="hidden" name="daan" value="<%= request.getParameter("daan") !=null ? request.getParameter("daan") : "" %>" />
            <%} else { %>
            <div class="form-group">找回密码成功</div>
            <%} %>

        </form>
        <script>
            $("#form1").validate();
        </script>
    </body>
</html>
