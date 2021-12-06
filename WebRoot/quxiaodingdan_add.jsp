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
    } %> <% if (null == request.getParameter("id") || "".equals(request.getParameter("id"))) { %>

    <script>
        alert("非法操作");
        history.go(-1);
    </script>
    <% out.close(); %>
 <%} %>
 <% Map readMap = Query.make("dingdan").where("id", request.getParameter("id")).find(); %>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">添加取消订单:</div>
            <div class="panel-body">
                <form action="quxiaodingdan.jsp?a=insert" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="dingdanid" value="<%= request.getParameter("id") !=null ? request.getParameter("id") : "" %>" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单号</label>
                            <div class="col-sm-10"><%= readMap.get("dingdanhao") %><input type="hidden" id="dingdanhao" name="dingdanhao" value="<%= Info.html(readMap.get("dingdanhao")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">订单金额</label>
                            <div class="col-sm-10"><%= readMap.get("dingdanjine") %><input type="hidden" id="dingdanjine" name="dingdanjine" value="<%= Info.html(readMap.get("dingdanjine")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货人</label>
                            <div class="col-sm-10"><%= readMap.get("shouhuoren") %><input type="hidden" id="shouhuoren" name="shouhuoren" value="<%= Info.html(readMap.get("shouhuoren")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">收货地址</label>
                            <div class="col-sm-10"><%= readMap.get("shouhuodizhi") %><input type="hidden" id="shouhuodizhi" name="shouhuodizhi" value="<%= Info.html(readMap.get("shouhuodizhi")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">手机号</label>
                            <div class="col-sm-10"><%= readMap.get("shoujihao") %><input type="hidden" id="shoujihao" name="shoujihao" value="<%= Info.html(readMap.get("shoujihao")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">备注<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入备注"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写备注"
                                    id="beizhu"
                                    name="beizhu"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">取消人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入取消人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="quxiaoren"
                                    name="quxiaoren"
                                    value="<%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />

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

