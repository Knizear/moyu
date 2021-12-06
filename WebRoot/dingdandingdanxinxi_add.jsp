<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>
<link href="js/h5upload/h5upload.css" rel="stylesheet" />
<script src="js/h5upload/h5upload.js"></script>

<div style="padding: 10px" class="admin-content">
    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

    <script>
        alert("对不起,请您先登陆!");
        location.href = "login.jsp";
    </script>
    <%return;
    } %>

    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">添加订单订单信息:</div>
            <div class="panel-body">
                <form action="dingdandingdanxinxi.jsp?a=insert" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入产品名称" style="width: 250px" id="chanpinmingcheng" name="chanpinmingcheng" value="" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品分类</label>
                            <div class="col-sm-10">
                                <select class="form-control class_chanpinfenlei20" data-value="" id="chanpinfenlei" name="chanpinfenlei" style="width: 250px">
                                    <% List<Map> select = new CommDAO().select("SELECT * FROM chanpinfenlei ORDER BY id desc"); %>
 <% for (Map m : select) { %>

                                    <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %></option>
                                    <%} %>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品图片</label>
                            <div class="col-sm-10">
                                <input type="hidden" id="chanpintupian" name="chanpintupian" value="" />
                                <script>
                                    showUploadImages("#chanpintupian");
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品价格</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入产品价格"
                                    style="width: 150px"
                                    step="0.01"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="chanpinjiage"
                                    name="chanpinjiage"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">购买数量</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入购买数量"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    min="1"
                                    max="<%= readMap.get("chanpinkucun") %>"
                                    data-msg-max="库存不足"
                                    id="goumaishuliang"
                                    name="goumaishuliang"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
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

