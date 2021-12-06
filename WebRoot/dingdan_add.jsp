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
    <%
            return;
        }
    %>

    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">订单:</div>
            <div class="panel-body">
                <form action="dingdan.jsp?a=insert" method="post" name="form1" id="form1">
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
                                        value="<%= Info.getID() %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单信息</label>
                            <div class="col-sm-10">
                                <%
                                    List<Map> dataListdingdanxinxi = new CommDAO()
                                            .select("SELECT * FROM gouwuche WHERE goumairen='" + request.getSession().getAttribute("username") + "' ORDER BY id desc");
                                %>

                                <div id="dataListdingdanxinxi" style="text-align: left">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <td>产品名称</td>
                                            <td>产品分类</td>
                                            <td>产品图片</td>
                                            <td>产品价格</td>
                                            <td>购买数量</td>
                                            <td>小计</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <% for (Map dataMap : dataListdingdanxinxi) { %>

                                            <td><%= dataMap.get("chanpinmingcheng") %>
                                            </td>
                                            <td><%
                                                Map mapchanpinfenlei13 = new CommDAO()
                                                        .find("SELECT fenleimingcheng FROM chanpinfenlei where id='" + dataMap.get("chanpinfenlei") + "'");
                                            %>
                                                <%= mapchanpinfenlei13.get("fenleimingcheng") %>
                                            </td>
                                            <td><% if ("".equals(dataMap.get("chanpintupian"))) { %>
                                                -<%} else { %><img width="100"
                                                                   src="<%= Info.images(dataMap.get("chanpintupian")) %>"/><%} %>
                                            </td>
                                            <td><%= dataMap.get("chanpinjiage") %>
                                            </td>
                                            <td><%= dataMap.get("goumaishuliang") %>
                                            </td>
                                            <td><%= dataMap.get("xiaoji") %>
                                            </td>
                                        </tr>
                                        </tbody>
                                        <%} %>

                                    </table>
                                </div>
                                <input id="dingdanxinxi" name="dingdanxinxi" type="hidden"/>
                                <script>
                                    $("#dingdanxinxi").val($("#dataListdingdanxinxi").html());
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单金额<span
                                    style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input style="width:150px;" readonly="readonly" id="dingdanjine" name="dingdanjine"
                                       value="<%= request.getParameter("xiaoji") %>"
                                       type="text"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人<span
                                    style="color: red">*</span></label>
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
                                        value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货地址<span
                                    style="color: red">*</span></label>
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
                                        value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">手机号<span
                                    style="color: red">*</span></label>
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
                                        value=""
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
                                        value="<%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input type="hidden" name="dingdanzhuangtai" id="dingdanzhuangtai" value="未支付"/>
                                <input type="hidden" name="iszf" value="否"/>
                                <input name="referer" value="dingdan_list_xiadanren.jsp" type="hidden"/>
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

