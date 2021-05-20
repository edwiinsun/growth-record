<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/5
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>接受数据并计算</title>
</head>
<body>
<%
double sum=0;
double _num1=0,_num2=0;
String _tonum1=request.getParameter("num1");
String _tonum2=request.getParameter("num2");
_num1=Double.parseDouble(_tonum1);
_num2=Double.parseDouble(_tonum2);
while(_num1<=_num2)
{
    sum+=_num1;  ++_num1;
}

%>
<%=_num1%>加到<%=_num2%>的和是<%=sum%>
</body>
</html>