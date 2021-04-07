<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String chao; %>
	<%
		Date d=new Date();
		int hour=d.getHours();
		if(hour>=0&&hour<12)
			chao="早上好";
		if(hour==12)
			chao="中午好";
		if(hour>12&&hour<=18)
			chao="下午好";
		if(hour>18&&hour<0)
			chao="晚上好";
	%>
	<%=chao %>
	<br/>
	<%=d %>
</body>
</html>
