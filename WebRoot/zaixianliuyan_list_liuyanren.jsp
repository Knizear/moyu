<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <%
    String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
    String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序
    
    String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
    where += " AND liuyanren='" + request.getSession().getAttribute("username") + "' "; //  设置liuyanren为当前登录用户
    
    // 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中
    
    List<Map> list = Query.make("zaixianliuyan").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 在线留言 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">


            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>姓名</th>
                            <th>联系电话</th>
                            <th>留言内容</th>
                            <th>留言人</th>
                            <th>回复内容</th>
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
                            <td><%= map.get("xingming") %></td>
                            <td><%= map.get("lianxidianhua") %></td>
                            <td><%= map.get("liuyanneirong") %></td>
                            <td><%= map.get("liuyanren") %></td>
                            <td><%= map.get("huifuneirong") %></td>
                            <td align="center">

                                <a href="zaixianliuyan.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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

