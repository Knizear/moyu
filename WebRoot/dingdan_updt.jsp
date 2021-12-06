<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

    <script>
        alert("对不起,请您先登陆!");
        location.href = "login.jsp";
    </script>
    <%return;
    } %> <%
     String updtself = "0"; // 设置更新
     HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "dingdan");
     %>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑订单:</div>
            <div class="panel-body">
                <form action="dingdan.jsp?a=update" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入订单号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="dingdanhao"
                                    name="dingdanhao"
                                    value="<%= Info.html(mmm.get("dingdanhao")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单信息</label>
                            <div class="col-sm-10">
                                <div id="dataListdingdanxinxi"><%= mmm.get("dingdanxinxi") %></div>
                                <input id="dingdanxinxi" name="dingdanxinxi" type="hidden" value="<%= Info.html(mmm.get("dingdanxinxi")) %>" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单金额<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入订单金额"
                                    style="width: 150px"
                                    step="0.01"
                                    data-rule-required="true"
                                    data-msg-required="请填写订单金额"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="dingdanjine"
                                    name="dingdanjine"
                                    value="<%= Info.html(mmm.get("dingdanjine")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入收货人"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写收货人"
                                    id="shouhuoren"
                                    name="shouhuoren"
                                    value="<%= Info.html(mmm.get("shouhuoren")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货地址<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入收货地址"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写收货地址"
                                    id="shouhuodizhi"
                                    name="shouhuodizhi"
                                    value="<%= Info.html(mmm.get("shouhuodizhi")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">手机号<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入手机号"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写手机号"
                                    phone="true"
                                    data-msg-phone="请输入正确手机号码"
                                    id="shoujihao"
                                    name="shoujihao"
                                    value="<%= Info.html(mmm.get("shoujihao")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">下单人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入下单人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="xiadanren"
                                    name="xiadanren"
                                    value="<%= mmm.get("xiadanren") %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="<%= mmm.get("id") %>" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="<%= updtself %>" type="hidden" />

                                <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                                <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            </div>
                        </div>
                    </div>

                    <!--form标签结束-->
                </form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>

    <script>
        $(function () {
            $("#form1").validate();
        });
    </script>
</div>
<%@ include file="foot.jsp" %>

