<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("chanpinmingcheng") != null && !"".equals(request.getParameter("chanpinmingcheng"))) {
    where += " AND chanpinmingcheng LIKE '%" + request.getParameter("chanpinmingcheng") + "%'";
}
if (request.getParameter("chanpinfenlei") != null && !"".equals(request.getParameter("chanpinfenlei"))) {
    where += " AND chanpinfenlei ='" + request.getParameter("chanpinfenlei") + "'";
}

List<Map> list = Query.make("chanpinxinxi").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<link href="js/owl/owl.carousel.min.css" rel="stylesheet" />
<script src="js/owl/owl.carousel.min.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="shop-product-xz">
            <div style="margin-bottom: 20px">
                <form action="?" class="search">
                    <table class="jd-search">
                        <tbody>
                            <tr>
                                <td class="label1">产品分类</td>
                                <td class="form-inline">
                                    <p class="search-radio">
                                        <input type="hidden" name="chanpinfenlei" value="<%= request.getParameter("chanpinfenlei") !=null ? request.getParameter("chanpinfenlei") : "" %>" />
                                        <a href="javascript:;" data-value="" onclick="selectRadio(this)">全部</a>
                                        <% List<Map> mapchanpinfenlei2 = new CommDAO().select("SELECT id,fenleimingcheng FROM chanpinfenlei"); %>
 <% for (Map r : mapchanpinfenlei2) { %>

                                        <a href="javascript:;" data-value="<%= r.get("id") %>" onclick="selectRadio(this)"><%= r.get("fenleimingcheng") %></a>
                                        <%} %>

                                    </p>
                                </td>
                            </tr>

                            <tr>
                                <td class="label1">产品名称</td>
                                <td class="form-inline">
                                    <input type="text" class="form-control" style="width: 150px" name="chanpinmingcheng" value="<%= request.getParameter("chanpinmingcheng") !=null ? request.getParameter("chanpinmingcheng") : "" %>" placeholder="请输入关键词" />
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>

            <div class="row clearfix">
                <% for (Map r : list) { %>

                <div class="products-col col-md-3 col-xs-12">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a class="primary_img img-box pb100 img-scale" href="chanpinxinxidetail.jsp?id=<%= r.get("id") %>">
                                    <div class="img" style="background-image: url('<%= Info.images(r.get("chanpintupian")) %>')">
                                        <img src="<%= Info.images(r.get("chanpintupian")) %>" alt="" />
                                    </div>
                                </a>
                            </div>
                            <figcaption class="product_content">
                                <h4 class="product_name">
                                    <a href="chanpinxinxidetail.jsp?id=<%= r.get("id") %>"> <%= r.get("chanpinmingcheng") %> </a>
                                </h4>
                                <div class="price_box">
                                    <span class="current_price">￥<%= r.get("chanpinjiage") %></span>
                                </div>
                                <div class="add_to_cart">
                                    <a href="chanpinxinxidetail.jsp?id=<%= r.get("id") %>" title="查看详情">查看详情</a>
                                </div>
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <%} %>

            </div>
            ${page.info}
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

