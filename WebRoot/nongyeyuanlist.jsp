<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("nongyeyuanmingcheng") != null && !"".equals(request.getParameter("nongyeyuanmingcheng"))) {
    where += " AND nongyeyuanmingcheng LIKE '%" + request.getParameter("nongyeyuanmingcheng") + "%'";
}

List<Map> list = Query.make("nongyeyuan").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="gr-control-module-table">
            <div style="margin-bottom: 20px">
                <form action="?" class="search">
                    <table class="jd-search">
                        <tbody>
                            <tr>
                                <td class="label1">农业园名称</td>
                                <td class="form-inline">
                                    <input type="text" class="form-control" style="width: 150px" name="nongyeyuanmingcheng" value="<%= request.getParameter("nongyeyuanmingcheng") !=null ? request.getParameter("nongyeyuanmingcheng") : "" %>" placeholder="请输入关键词" />
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>

            <div class="photo-list row">
                <ul class="clearfix">
                    <% for (Map r : list) { %>

                    <li class="clearfix col-md-3 col-xs-12">
                        <div class="photo-content">
                            <a href="nongyeyuandetail.jsp?id=<%= r.get("id") %>">
                                <div class="thumbs">
                                    <div class="img-box pb100">
                                        <div class="img" style="background-image: url('<%= r.get("nongyeyuantupian") %>')"></div>
                                    </div>
                                </div>
                            </a>
                            <div class="photo-content-text">
                                <a href="nongyeyuandetail.jsp?id=<%= r.get("id") %>">
                                    <h3><%= r.get("nongyeyuanmingcheng") %></h3>
                                </a>
                                <div class="description"><%= Info.subStr(r.get("neirong") , 12) %></div>
                            </div>
                        </div>
                    </li>
                    <%} %>

                </ul>
            </div>
            ${page.info}
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

