<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>使用getParam函数获取页面数据</title>
</head>
<body>
<%
String current_name= "";
String current_value="";
request.setCharacterEncoding("UTF-8");

Enumeration params=request.getParameterNames();  //Enumeration 是枚举类型, getParameterNames()方法会返回客户端传给服务器的所有参数
    while(params.hasMoreElements())
    {
        current_name=(String)params.nextElement();
        current_value= request.getParameter(current_name);
        %>参数名称:<%=current_name%>参数值:<%=current_value%> <br>
<%}%>






</body>
</html>
