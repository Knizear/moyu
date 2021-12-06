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
     HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "gouwuche");
     %>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑购物车:</div>
            <div class="panel-body">
                <form action="gouwuche.jsp?a=update" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="chanpinxinxiid" value="<%= mmm.get("chanpinxinxiid") %>" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品名称</label>
                            <div class="col-sm-10"><%= mmm.get("chanpinmingcheng") %><input type="hidden" id="chanpinmingcheng" name="chanpinmingcheng" value="<%= Info.html(mmm.get("chanpinmingcheng")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品分类</label>
                            <div class="col-sm-10"><% Map mapchanpinfenlei4 = new CommDAO().find("SELECT fenleimingcheng FROM chanpinfenlei where id='" + mmm.get("chanpinfenlei") + "'"); %>
<%= mapchanpinfenlei4.get("fenleimingcheng") %><input type="hidden" id="chanpinfenlei" name="chanpinfenlei" value="<%= Info.html(mmm.get("chanpinfenlei")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品图片</label>
                            <div class="col-sm-10">
                                <% if ("".equals(mmm.get("chanpintupian"))) { %>
-<%} else { %><img width="100" src="<%= Info.images(mmm.get("chanpintupian")) %>" /><%} %>
<input
                                    type="hidden"
                                    id="chanpintupian"
                                    name="chanpintupian"
                                    value="<%= Info.html(mmm.get("chanpintupian")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品价格</label>
                            <div class="col-sm-10"><%= mmm.get("chanpinjiage") %><input type="hidden" id="chanpinjiage" name="chanpinjiage" value="<%= Info.html(mmm.get("chanpinjiage")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">购买数量<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入购买数量"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写购买数量"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    min="1"
                                    max="<%= readMap.get("chanpinkucun") %>"
                                    data-msg-max="库存不足"
                                    id="goumaishuliang"
                                    name="goumaishuliang"
                                    value="<%= Info.html(mmm.get("goumaishuliang")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">购买人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入购买人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="goumairen"
                                    name="goumairen"
                                    value="<%= mmm.get("goumairen") %>"
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

