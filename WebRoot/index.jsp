<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<link rel="stylesheet" href="js/swiper/swiper.css" />
<script src="js/swiper/swiper.js"></script>
<link href="js/owl/owl.carousel.min.css" rel="stylesheet" />
<script src="js/owl/owl.carousel.min.js"></script>

<div>
    <% List<Map> bhtList = Query.make("lunbotu").order("id desc").limit(5).select(); %>


    <div class="swiper-container" id="banner24">
        <div class="swiper-wrapper">
            <% for (Map bht : bhtList) { %>

            <div class="swiper-slide">
                <div class="decoimg_b2">
                    <a class="btn btn-" href="<%= bht.get("url") %>" style="background-image: url('<%= bht.get("image") %>'); height: 450px"></a>
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
<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">
            <div class="col-sm-4 col-md-4">
                <div class="title-sn-title">
                    <div class="sn-title" :style="style">
                        <div class="more">
                            <a href="huodonglist.jsp"> More </a>
                        </div>
                        <span> 活动 </span>
                    </div>
                    <div class="sn-content">
                        <div class="hotnews class3">
                            <% List<Map> huodonglist28 = Query.make("huodong").limit(7).order("id desc").select(); %>

                            <ul class="a">
                                <%
                                int i = 1;
                                for (Map r : huodonglist28) {
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
                    </div>
                </div>
            </div>
            <div class="col-sm-8 col-md-8">
                <div class="title-sn-title">
                    <div class="sn-title" :style="style">
                        <div class="more">
                            <a href="nongyeyuanlist.jsp"> More </a>
                        </div>
                        <span> 农业园 </span>
                    </div>
                    <div class="sn-content">
                        <div class="module-products clearfix">
                            <% List<Map> nongyeyuanlist31 = Query.make("nongyeyuan").limit(4).order("id desc").select(); %>


                            <div class="row products clearfix">
                                <% for (Map r : nongyeyuanlist31) { %>

                                <div class="products-col col-md-3 col-xs-12">
                                    <article>
                                        <a href="nongyeyuandetail.jsp?id=<%= r.get("id") %>" class="pro-btn pro-btn-add"> 查看 </a>
                                        <div class="figure-grid">
                                            <div class="image">
                                                <div class="img-box pb97 img-scale">
                                                    <a class="img" href="nongyeyuandetail.jsp?id=<%= r.get("id") %>" style="background-image: url('<%= r.get("nongyeyuantupian") %>')"></a>
                                                </div>
                                            </div>
                                            <div class="text">
                                                <h2 class="title h4">
                                                    <a href="nongyeyuandetail.jsp?id=<%= r.get("id") %>"> <%= r.get("nongyeyuanmingcheng") %> </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <%} %>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-sn-title">
            <div class="sn-title" :style="style">
                <div class="more">
                    <a href="chanpinxinxilist.jsp"> More </a>
                </div>
                <span> 农产品 </span>
            </div>
            <div class="sn-content">
                <div class="shop-product-xz">
                    <% List<Map> chanpinxinxilist36 = Query.make("chanpinxinxi").limit(4).order("id desc").select(); %>

                    <div class="row clearfix">
                        <% for (Map r : chanpinxinxilist36) { %>

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
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

