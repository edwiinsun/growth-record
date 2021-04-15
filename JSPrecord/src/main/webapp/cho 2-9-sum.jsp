<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str1=request.getParameter("shuju1");
String str2=request.getParameter("shuju2");
double s1=Double.parseDouble(str1);
double s2=Double.parseDouble(str2);
double s3=s1+s2;
request.setAttribute("st1",s1);
request.setAttribute("st2",s2);
request.setAttribute("st3",s3);
%><jsp:forward page="cho 2-9-output.jsp"></jsp:forward>
</body>
</html>