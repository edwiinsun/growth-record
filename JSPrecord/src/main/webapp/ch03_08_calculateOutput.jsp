<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>计算结果显示页面</title>
</head>
<body>
<%
Double num1=(Double)request.getAttribute("st1");
Double num2=(Double)request.getAttribute("st2");
Double resu=(Double)request.getAttribute("res");

%><%=num1 %>+<%=num2 %>=<%=resu%> <br>
利用getParameter方法请求获取参数, 并显示: <br>
<%
String _num1=request.getParameter("first");

String _num2=request.getParameter("second");
//<jsp:forward page="ch03_08_calculateOutput.jsp"></jsp:forward>  从sum页面中获取道的数据
%><%=_num1 %>+<%=_num2%>=<%=resu%> <br>
</body>
</html>
