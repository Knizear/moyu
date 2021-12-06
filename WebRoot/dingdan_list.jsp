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
    
    if (request.getParameter("dingdanhao") != null && !"".equals(request.getParameter("dingdanhao"))) {
        where += " AND dingdanhao LIKE '%" + request.getParameter("dingdanhao") + "%'";
    }
    if (request.getParameter("dingdanxinxi") != null && !"".equals(request.getParameter("dingdanxinxi"))) {
        where += " AND dingdanxinxi LIKE '%" + request.getParameter("dingdanxinxi") + "%'";
    }
    if (request.getParameter("dingdanzhuangtai") != null && !"".equals(request.getParameter("dingdanzhuangtai"))) {
        where += " AND dingdanzhuangtai ='" + request.getParameter("dingdanzhuangtai") + "'";
    }
    
    List<Map> list = Query.make("dingdan").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 订单 </span>
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
                        订单状态

                        <select class="form-control class_dingdanzhuangtai15" data-value="<%= request.getParameter("dingdanzhuangtai") !=null ? request.getParameter("dingdanzhuangtai") : "" %>" id="dingdanzhuangtai" name="dingdanzhuangtai">
                            <option value="">请选择</option>
                            <option value="未支付">未支付</option>
                            <option value="已支付">已支付</option>
                        </select>
                        <script>
                            $(".class_dingdanzhuangtai15").val($(".class_dingdanzhuangtai15").attr("data-value"));
                        </script>
                    </div>

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
                            <th>订单状态</th>
                            <th>收货人</th>
                            <th>收货地址</th>
                            <th>手机号</th>
                            <th>下单人</th>
                            <th>下单时间</th>
                            <th width="80" data-field="iszf">是否支付</th>
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
                            <td><%= map.get("dingdanzhuangtai") %></td>
                            <td><%= map.get("shouhuoren") %></td>
                            <td><%= map.get("shouhuodizhi") %></td>
                            <td><%= map.get("shoujihao") %></td>
                            <td><%= map.get("xiadanren") %></td>
                            <td><%= Info.subStr(map.get("addtime") , 19 , "") %></td>
                            <td>
                                <%= map.get("iszf") %> <% if ("否".equals(map.get("iszf"))) { %>

                                <%} %>

                            </td>
                            <td align="center">

                                <a href="dingdan_detail.jsp?id=<%= map.get("id") %>">详情</a>
                                <a href="dingdan.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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

