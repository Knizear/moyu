<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <%
    String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
    String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序
    
    String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
    
    // 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中
    
    if (request.getParameter("dingdanid") != null && !"".equals(request.getParameter("dingdanid"))) {
        where += " AND dingdanid='" + request.getParameter("dingdanid") + "' ";
    }
    if (request.getParameter("dingdanhao") != null && !"".equals(request.getParameter("dingdanhao"))) {
        where += " AND dingdanhao LIKE '%" + request.getParameter("dingdanhao") + "%'";
    }
    if (request.getParameter("beizhu") != null && !"".equals(request.getParameter("beizhu"))) {
        where += " AND beizhu LIKE '%" + request.getParameter("beizhu") + "%'";
    }
    if (request.getParameter("quxiaoren") != null && !"".equals(request.getParameter("quxiaoren"))) {
        where += " AND quxiaoren LIKE '%" + request.getParameter("quxiaoren") + "%'";
    }
    
    List<Map> list = Query.make("quxiaodingdan").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 取消订单 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        订单号

                        <input type="text" class="form-control" style="" name="dingdanhao" value="<%= request.getParameter("dingdanhao") !=null ? request.getParameter("dingdanhao") : "" %>" />
                    </div>
                    <div class="form-group">
                        备注

                        <input type="text" class="form-control" style="" name="beizhu" value="<%= request.getParameter("beizhu") !=null ? request.getParameter("beizhu") : "" %>" />
                    </div>
                    <div class="form-group">
                        取消人

                        <input type="text" class="form-control" style="" name="quxiaoren" value="<%= request.getParameter("quxiaoren") !=null ? request.getParameter("quxiaoren") : "" %>" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="dingdanjine">按订单金额</option>
                    </select>
                    <select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>
                    <script>
                        $("#orderby").val("<%= orderby %>");
                        $("#sort").val("<%= sort %>");
                    </script>
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>订单号</th>
                            <th>订单金额</th>
                            <th>收货人</th>
                            <th>收货地址</th>
                            <th>手机号</th>
                            <th>备注</th>
                            <th>取消人</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        int i = 0;
                        for (Map map : list) {
                            i++;
                        %>

                        <tr id="<%= map.get("id") %>" pid="">
                            <td width="30" align="center">
                                <label> <%= i %> </label>
                            </td>
                            <td><%= map.get("dingdanhao") %></td>
                            <td><%= map.get("dingdanjine") %></td>
                            <td><%= map.get("shouhuoren") %></td>
                            <td><%= map.get("shouhuodizhi") %></td>
                            <td><%= map.get("shoujihao") %></td>
                            <td><%= map.get("beizhu") %></td>
                            <td><%= map.get("quxiaoren") %></td>
                            <td align="center">
                                <a href="quxiaodingdan_detail.jsp?id=<%= map.get("id") %>">详情</a>
                                <a href="quxiaodingdan_updt.jsp?id=<%= map.get("id") %>">编辑</a>
                                <a href="quxiaodingdan.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                        <%} %>

                    </tbody>
                </table>
            </div>

            ${page.info}
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

