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
    
    if (request.getParameter("chanpinxinxiid") != null && !"".equals(request.getParameter("chanpinxinxiid"))) {
        where += " AND chanpinxinxiid='" + request.getParameter("chanpinxinxiid") + "' ";
    }
    if (request.getParameter("chanpinmingcheng") != null && !"".equals(request.getParameter("chanpinmingcheng"))) {
        where += " AND chanpinmingcheng LIKE '%" + request.getParameter("chanpinmingcheng") + "%'";
    }
    if (request.getParameter("chanpinfenlei") != null && !"".equals(request.getParameter("chanpinfenlei"))) {
        where += " AND chanpinfenlei ='" + request.getParameter("chanpinfenlei") + "'";
    }
    if (request.getParameter("goumaishuliang_start") != null && !"".equals(request.getParameter("goumaishuliang_start"))) {
        where += " AND goumaishuliang >='" + request.getParameter("goumaishuliang_start") + "' ";
    }
    if (request.getParameter("goumaishuliang_end") != null && !"".equals(request.getParameter("goumaishuliang_end"))) {
        where += " AND goumaishuliang <='" + request.getParameter("goumaishuliang_end") + "' ";
    }
    if (request.getParameter("xiaoji") != null && !"".equals(request.getParameter("xiaoji"))) {
        where += " AND xiaoji LIKE '%" + request.getParameter("xiaoji") + "%'";
    }
    
    List<Map> list = Query.make("gouwuche").where(where).order(orderby + " " + sort).page(15);
    
    Map total = Query.make("gouwuche").field("(sum(xiaoji)) sum_xiaoji").where(where).field("(sum(xiaoji)) sum_xiaoji").find();
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 购物车 </span>
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
                        产品名称

                        <input type="text" class="form-control" style="" name="chanpinmingcheng" value="<%= request.getParameter("chanpinmingcheng") !=null ? request.getParameter("chanpinmingcheng") : "" %>" />
                    </div>
                    <div class="form-group">
                        产品分类

                        <select class="form-control class_chanpinfenlei1" data-value="<%= request.getParameter("chanpinfenlei") !=null ? request.getParameter("chanpinfenlei") : "" %>" id="chanpinfenlei" name="chanpinfenlei">
                            <option value="">请选择</option>
                            <% List<Map> select = new CommDAO().select("SELECT * FROM chanpinfenlei ORDER BY id desc"); %>
 <% for (Map m : select) { %>

                            <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %></option>
                            <%} %>

                        </select>
                        <script>
                            $(".class_chanpinfenlei1").val($(".class_chanpinfenlei1").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        购买数量

                        <input type="text" class="form-control" style="width: 80px" name="goumaishuliang_start" value="<%= request.getParameter("goumaishuliang_start") !=null ? request.getParameter("goumaishuliang_start") : "" %>" />-
                        <input type="text" class="form-control" style="width: 80px" name="goumaishuliang_end" value="<%= request.getParameter("goumaishuliang_end") !=null ? request.getParameter("goumaishuliang_end") : "" %>" />
                    </div>
                    <div class="form-group">
                        小计

                        <input type="text" class="form-control" style="" name="xiaoji" value="<%= request.getParameter("xiaoji") !=null ? request.getParameter("xiaoji") : "" %>" />
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
                            <th>产品名称</th>
                            <th>产品分类</th>
                            <th>产品图片</th>
                            <th>产品价格</th>
                            <th>购买数量</th>
                            <th>小计</th>
                            <th>购买人</th>
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
                            <td><%= map.get("chanpinmingcheng") %></td>
                            <td><% Map mapchanpinfenlei1 = new CommDAO().find("SELECT fenleimingcheng FROM chanpinfenlei where id='" + map.get("chanpinfenlei") + "'"); %>
<%= mapchanpinfenlei1.get("fenleimingcheng") %></td>
                            <td><% if ("".equals(map.get("chanpintupian"))) { %>
-<%} else { %><img width="100" src="<%= Info.images(map.get("chanpintupian")) %>" /><%} %>
</td>
                            <td><%= map.get("chanpinjiage") %></td>
                            <td><%= map.get("goumaishuliang") %></td>
                            <td><%= map.get("xiaoji") %></td>
                            <td><%= map.get("goumairen") %></td>
                            <td align="center">
                                <a href="gouwuche_updt.jsp?id=<%= map.get("id") %>">编辑</a>
                                <a href="gouwuche.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                        <%} %>

                    </tbody>
                </table>
            </div>

            ${page.info}
            <p>小计总和: <%= total.get("sum_xiaoji") %> 　　</p>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

