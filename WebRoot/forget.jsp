<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%!
void showError(JspWriter out , String msg)
{
    try{
        out.println("<script>alert('"+msg+"');history.go(-1);</script>");
        out.flush();
    }catch (Exception e){
        e.printStackTrace();
    }
} %> <%
String cx = "";
String step = Request.get("step", "1");
int sp = Integer.valueOf(step).intValue();

String username = "";
String daan = "";
String xmm = "";
Map user = null;
if (sp > 1) {
    cx = Request.get("cx");
    username = Request.get("username");
    /*查看模块 */
    if (cx.equals("用户")) {
        user = Query.make("yonghu").where("yonghuming", username).find();
    }
    /* 结束模块 */

    if (user.isEmpty()) {
        showError(out, "没有找到该用户");
        return;
    }
}
if (sp > 2) {
    daan = Request.get("daan");
    if (!daan.equals(user.get("daan"))) {
        showError(out, "答案错误，请重新填写");
        return;
    }
}
if (sp > 3) {
    xmm = Request.get("xmm");
    String sql = "";
    if (cx.equals("用户")) {
        sql = "UPDATE yonghu SET mima='" + xmm + "' WHERE yonghuming='" + username + "'";
    }

    new CommDAO().commOper(sql);
}
%>
 <%@include file="forget_step.jsp" %>

