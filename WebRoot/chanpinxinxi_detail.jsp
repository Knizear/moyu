<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>

<link href="js/h5upload/h5upload.css" rel="stylesheet" />
<script src="js/h5upload/h5upload.js"></script>

<div style="padding: 10px" class="admin-content">
    <% Map map = Query.make("chanpinxinxi").where("id", request.getParameter("id")).find(); %>

    <div class="admin-detail">
        <table class="table table-detail">
            <tr>
                <td width="180">产品编号</td>
                <td><%= map.get("chanpinbianhao") %></td>

                <td width="180">产品名称</td>
                <td><%= map.get("chanpinmingcheng") %></td>
            </tr>
            <tr>
                <td width="180">产品分类</td>
                <td><% Map mapchanpinfenlei4 = new CommDAO().find("SELECT fenleimingcheng FROM chanpinfenlei where id='" + map.get("chanpinfenlei") + "'"); %>
<%= mapchanpinfenlei4.get("fenleimingcheng") %></td>

                <td width="180">产品图片</td>
                <td>
                    <fieldset class="images_box">
                        <div id="gellay_images" class="imagesList">
                            <script>
                                var images = "<%= map.get("chanpintupian") %>".split(",");
                                for (var i = 0; i < images.length; i++) {
                                    var image = images[i];
                                    var uploadImage = '<div class="uploadImage">' + '<span class="thumb thumbnail"><img src="' + image + '"/></span>' + "</div>";
                                    document.writeln(uploadImage);
                                }
                            </script>
                        </div>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td width="180">产地</td>
                <td><%= map.get("chandi") %></td>

                <td width="180">产品价格</td>
                <td><%= map.get("chanpinjiage") %></td>
            </tr>
            <tr>
                <td width="180">产品库存</td>
                <td><%= map.get("chanpinkucun") %></td>

                <td width="180">产品销量</td>
                <td><%= map.get("chanpinxiaoliang") %></td>
            </tr>
            <tr>
                <td width="180">产品详情</td>
                <td><%= map.get("chanpinxiangqing") %></td>
            </tr>
        </table>
    </div>

    <div class="button-list">
        <div class="">
            <button onclick="history.go(-1);" style="background: #07de19; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">返回</button>
            <button onclick="window.print()" style="background: #4961de; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">打印本页</button>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

