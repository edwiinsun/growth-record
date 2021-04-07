<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>include指令实例</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
<h2>这是一个JSP文件</h2>
<center>
现在的日期时间是:<%=new Date() %>
<hr>
<%@include file="ch03_04_includeA.jsp" %> 
<%-- <jsp:include page="ch03_04_includeA.jsp"></jsp:include>  --%>

</center>
  </body>
</html>
