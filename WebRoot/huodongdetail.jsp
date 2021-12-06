<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%  %>
 <% Map map = Query.make("huodong").where("id", request.getParameter("id")).find(); %>
<%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div>
            <div class="common-title" style="margin-top: 4em">
                <p>
                    <i></i>
                    <i></i>
                </p>
            </div>
            <div class="news_show">
                <span class="show_t"> <%= map.get("huodongmingcheng") %> </span>
                <span class="fa_time"> </span>
                <div><%= map.get("huodongneirong") %></div>
                <div class="s_x clearfix">
                    <% Map prev = new CommDAO().find("SELECT * FROM huodong WHERE id<'" + map.get("id") + "' ORDER BY id desc"); %>
 <% if (prev.get("id") != null) { %>

                    <a href="huodongdetail.jsp?id=<%= prev.get("id") %>" class="s_prev">上一篇：<%= prev.get("huodongmingcheng") %></a>
                    <%} else { %>
                    <a href="javascript:;" class="s_prev">上一篇：没有了</a>
                    <%} %>
 <% Map next = new CommDAO().find("SELECT * FROM huodong WHERE id>'" + map.get("id") + "' ORDER BY id asc"); %>
 <% if (next.get("id") != null) { %>

                    <a href="huodongdetail.jsp?id=<%= next.get("id") %>">下一篇：<%= next.get("huodongmingcheng") %></a>
                    <%} else { %>
                    <a href="javascript:;">下一篇：没有了</a>
                    <%} %>

                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

