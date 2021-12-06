<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<!DOCTYPE html>
<html>
    <head>
        <title>农业园导览及农产品销售系统后台管理系统</title>
        <link rel="stylesheet" href="htstyle/css/bootstrap.min.css" />
        <link rel="stylesheet" href="htstyle/css/font-awesome.min.css" />
        <link rel="stylesheet" href="htstyle/css/index.css" />
    </head>
    <body class="hold-transition skin-blue sidebar-mini" style="overflow: hidden">
        <div id="ajax-loader" style="cursor: progress; position: fixed; top: 0; left: 0; right: 0px; bottom: 0px; background: #fff; z-index: 10000; overflow: hidden">
            <img src="htstyle/img/ajax-loader.gif" style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto" />
        </div>
        <div class="wrapper left-side1">
            <!--头部信息-->
            <header class="main-header">
                <a href="javascript:void (0)" class="logo logo1"> 农业园导览及农产品销售系统 </a>
                <nav class="navbar navbar-static-top navbar1" style="display: block; font-weight: 500; font-size: 14px; color: #fff; padding-left: 10px">
                    <span class="index_top"><strong></strong></span>
                    <div class="navbar-custom-menu" style="margin-top: 10px">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="./" class="btn btn-block btn-info">前台首页</a>
                            </li>
                            <li>
                                <a href="sy.jsp" target="mainFrame" class="btn btn-block btn-danger">后台主页</a>
                            </li>
                            <li>
                                <a href="logout.jsp" onclick="return confirm('确定退出系统？')" class="btn btn-block btn-danger">退出</a>
                            </li>

                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle btn btn-primary" data-toggle="dropdown">
                                    <% if (request.getSession().getAttribute("touxiang") != null && !(request.getSession().getAttribute("touxiang").equals(""))) { %>

                                    <img src="<%= request.getSession().getAttribute("touxiang") !=null ? request.getSession().getAttribute("touxiang") : "" %>" class="user-image" alt="User Image" />
                                    <%} else { %>
                                    <img src="htstyle/img/user01.jpg" class="user-image" alt="User Image" />
                                    <%} %>

                                    <span class="hidden-xs"><%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %>，<%= request.getSession().getAttribute("cx") !=null ? request.getSession().getAttribute("cx") : "" %></span>
                                    <span class="fa fa-arrow-circle-down"></span>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <!--<li><a class="menuItem" data-id="userInfo" href="javascript:;"><i class="fa fa-user"></i>个人信息</a></li>-->
                                    <li class="divider"></li>
                                    <li>
                                        <a href="logout.jsp" onclick="return confirm('确定退出系统？')"><i class="ace-icon fa fa-power-off"></i>安全退出</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!--左边导航-->
            <div class="main-sidebar">
                <div class="sidebar">
                    <ul class="sidebar-menu" id="sidebar-menu">
                        <li class="header">导航</li>

                        <% if ("管理员".equals(request.getSession().getAttribute("cx"))) { %>
 <%@ include file="left_guanliyuan.jsp" %>
 <%} %>
 <% if ("用户".equals(request.getSession().getAttribute("cx"))) { %>
 <%@ include file="left_yonghu.jsp" %>
 <%} %>

                    </ul>
                </div>
            </div>
            <!--中间内容-->
            <div id="content-wrapper" class="content-wrapper">
                <div class="content-iframe">
                    <div class="mainContent" id="content-main" style="margin: 10px; margin-bottom: 0; padding: 0">
                        <iframe id="myFrame" name="mainFrame" class="LRADMS_iframe" width="100%" height="100%" src="sy.jsp" frameborder="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <script src="htstyle/js/jquery-2.2.0.min.js"></script>
        <script src="htstyle/js/bootstrap.min.js"></script>
        <script src="htstyle/js/index.js"></script>
    </body>
</html>
