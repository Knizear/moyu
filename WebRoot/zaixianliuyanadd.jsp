<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
if ((String) request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) {
    out.print("<script>javascript:alert('对不起，您已超时或未登陆！');window.history.go(-1);</script>");
    return;
}
%>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<script src="js/jquery.validate.js"></script>

<div class="container">
    <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">在线留言:</div>
        <div class="panel-body">
            <form action="zaixianliuyan.jsp?a=insert" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入姓名"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写姓名"
                                id="xingming"
                                name="xingming"
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">联系电话<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入联系电话"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写联系电话"
                                id="lianxidianhua"
                                name="lianxidianhua"
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">留言内容<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <textarea
                                style="width: 80%; height: 120px"
                                class="form-control"
                                placeholder="输入留言内容"
                                data-rule-required="true"
                                data-msg-required="请填写留言内容"
                                id="liuyanneirong"
                                name="liuyanneirong"
                            ></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">留言人</label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入留言人"
                                style="width: 150px"
                                readonly="readonly"
                                id="liuyanren"
                                name="liuyanren"
                                value="<%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %>"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                        <div class="col-sm-10">
                            <input name="referer" value="./" type="hidden"/>
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

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

