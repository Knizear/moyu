<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>
<link href="js/h5upload/h5upload.css" rel="stylesheet" />
<script src="js/h5upload/h5upload.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css" />
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">
    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

    <script>
        alert("对不起,请您先登陆!");
        location.href = "login.jsp";
    </script>
    <%return;
    } %> <%
     String updtself = "0"; // 设置更新
     HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "chanpinxinxi");
     %>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑产品信息:</div>
            <div class="panel-body">
                <form action="chanpinxinxi.jsp?a=update" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品编号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入产品编号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="chanpinbianhao"
                                    name="chanpinbianhao"
                                    value="<%= Info.html(mmm.get("chanpinbianhao")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品名称<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入产品名称"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写产品名称"
                                    id="chanpinmingcheng"
                                    name="chanpinmingcheng"
                                    value="<%= Info.html(mmm.get("chanpinmingcheng")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品分类<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_chanpinfenlei12"
                                    data-value="<%= Info.html(mmm.get("chanpinfenlei")) %>"
                                    data-rule-required="true"
                                    data-msg-required="请填写产品分类"
                                    id="chanpinfenlei"
                                    name="chanpinfenlei"
                                    style="width: 250px"
                                >
                                    <% List<Map> select = new CommDAO().select("SELECT * FROM chanpinfenlei ORDER BY id desc"); %>
 <% for (Map m : select) { %>

                                    <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %></option>
                                    <%} %>

                                </select>
                                <script>
                                    $(".class_chanpinfenlei12").val($(".class_chanpinfenlei12").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品图片<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input type="hidden" data-rule-required="true" data-msg-required="请填写产品图片" id="chanpintupian" name="chanpintupian" value="<%= Info.html(mmm.get("chanpintupian")) %>" />
                                <script>
                                    showUploadImages("#chanpintupian");
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产地<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入产地"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写产地"
                                    id="chandi"
                                    name="chandi"
                                    value="<%= Info.html(mmm.get("chandi")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品价格<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入产品价格"
                                    style="width: 150px"
                                    step="0.01"
                                    data-rule-required="true"
                                    data-msg-required="请填写产品价格"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="chanpinjiage"
                                    name="chanpinjiage"
                                    value="<%= Info.html(mmm.get("chanpinjiage")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品库存<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入产品库存"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写产品库存"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="chanpinkucun"
                                    name="chanpinkucun"
                                    value="<%= Info.html(mmm.get("chanpinkucun")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">产品详情<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <textarea
                                    data-rule-required="true"
                                    data-msg-required="请填写产品详情"
                                    id="chanpinxiangqing"
                                    name="chanpinxiangqing"
                                    style="max-width: 750px; width: 100%; height: 300px"
                                >
<%= Info.html(mmm.get("chanpinxiangqing")) %></textarea
                                >
                                <script>
                                    (function () {
                                        var um = UM.getEditor("chanpinxiangqing");
                                    })();
                                </script>
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

