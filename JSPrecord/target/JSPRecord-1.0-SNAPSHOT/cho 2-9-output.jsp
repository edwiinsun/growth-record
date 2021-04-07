<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
利用getAttribute方法获取利用srtAttribute方法保存的值，并显示！<br>
<%
Double a1=(Double)request.getAttribute("st1");
Double a2=(Double)request.getAttribute("st2");
Double a3=(Double)request.getAttribute("st3");
%>
<%=a1 %>+<%=a2 %>=<%=a3 %><br>
</body>
</html>