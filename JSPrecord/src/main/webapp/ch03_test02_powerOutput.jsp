<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/5
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算页面</title>
</head>
<body>
<form action="ch03_test02_powerShow.jsp">
<%
String _num=request.getParameter("num");
Double num=Double.parseDouble(_num);
Double result=num*num;

%>
<jsp:include page="ch03_test02_powerShow.jsp"></jsp:include>
</body>
</html>
