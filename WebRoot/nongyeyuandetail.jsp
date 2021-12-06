<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%  %>
 <% Map map = Query.make("nongyeyuan").where("id", request.getParameter("id")).find(); %>
<%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div id="project-box" class="clearfix">
            <!-- slider -->
            <div class="project-slider" style="width: 25%">
                <div class="img-box pb80">
                    <div class="img" style="background-image: url('<%= map.get("nongyeyuantupian") %>')"></div>
                </div>
            </div>
            <!-- ENDS slider -->

            <div class="info"></div>
            <!-- entry-content -->
            <div class="entry-content">
                <h2 class="heading"><%= map.get("nongyeyuanmingcheng") %></h2>
                <div class="multicolumn">
                    <p><%= map.get("neirong") %></p>
                </div>
            </div>
            <!-- ENDS entry content -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

