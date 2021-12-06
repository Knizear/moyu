<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<li class="treeview">
    <a href="javascript:;" class="nav-top-item">
        <i class="fa fa-desktop"></i>
        <span>购物车</span>
        <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu treeview-menu1" style="display: none">
        <li>
            <a class="menuItem" target="mainFrame" href="gouwuche_list_goumairen.jsp">
                <i class="fa fa-sitemap"></i>
                我的购物车
            </a>
        </li>
    </ul>
</li>
<li class="treeview">
    <a href="javascript:;" class="nav-top-item">
        <i class="fa fa-desktop"></i>
        <span>订单</span>
        <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu treeview-menu1" style="display: none">
        <li>
            <a class="menuItem" target="mainFrame" href="dingdan_list_xiadanren.jsp">
                <i class="fa fa-sitemap"></i>
                我的订单
            </a>
        </li>
        <li>
            <a class="menuItem" target="mainFrame" href="quxiaodingdan_list_quxiaoren.jsp">
                <i class="fa fa-sitemap"></i>
                订单取消查询
            </a>
        </li>
    </ul>
</li>
<li class="treeview">
    <a href="javascript:;" class="nav-top-item">
        <i class="fa fa-desktop"></i>
        <span>个人中心</span>
        <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu treeview-menu1" style="display: none">
        <li>
            <a class="menuItem" target="mainFrame" href="yonghu_updtself.jsp">
                <i class="fa fa-sitemap"></i>
                修改个人资料
            </a>
        </li>
        <li>
            <a class="menuItem" target="mainFrame" href="mod.jsp">
                <i class="fa fa-sitemap"></i>
                修改密码
            </a>
        </li>
    </ul>
</li>
