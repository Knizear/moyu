<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("huodongmingcheng") != null && !"".equals(request.getParameter("huodongmingcheng"))) {
    where += " AND huodongmingcheng LIKE '%" + request.getParameter("huodongmingcheng") + "%'";
}
if (request.getParameter("addtime") != null && !"".equals(request.getParameter("addtime"))) {
    where += " AND addtime LIKE '%" + request.getParameter("addtime") + "%'";
}

List<Map> list = Query.make("huodong").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>

    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
        <div>
            <% List<Map> bhtList = Query.make("lunbotu").order("id desc").limit(1).select(); %>


            <div class="swiper-container" id="banner24">
                <div class="swiper-wrapper">
                    <% for (Map bht : bhtList) { %>

                    <div class="swiper-slide">
                        <div class="decoimg_b2">
                            <a class="btn btn-" href="<%= bht.get("url") %>" style="background-image: url('<%= bht.get("image") %>'); height: 400px"></a>
                        </div>
                    </div>
                    <%} %>

                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
                <!-- 如果需要导航按钮 -->
            </div>

            <script>
                var mySwiper = new Swiper("#banner24", {
                    loop: true, // 循环模式选项
                    autoplay: {
                        delay: 3000,
                        disableOnInteraction: false,
                    },
                    // 如果需要分页器
                    pagination: {
                        el: ".swiper-pagination",
                    },
                    // 如果需要滚动条
                    /*scrollbar: {
                        el: '.swiper-scrollbar',
                    },*/
                });
            </script>
        </div>
        <div class="hotnews class3">
            <ul class="a">
                <%
                int i = 0;
                for (Map r : list) {
                    i++;
                %>

                <li>
                    <a href="huodongdetail.jsp?id=<%= r.get("id") %>" class="clearfix">
                        <span class="shijian"><%= r.get("addtime") %></span>
                        <%= r.get("huodongmingcheng") %>
                    </a>
                </li>
                <%} %>

            </ul>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

