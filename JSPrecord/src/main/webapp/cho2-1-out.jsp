<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
利用out对象输出的页面信息 :<br>
<hr>
<% out.print("aaa<br>bbb");
    out.print("<br>用户名或者密码不对，请重新" +
            " <a href ='http://www.sohu.com'><font size='15' color='red'>登录</font></a>"
    );
    out.print("<br><a href='javascript:history.back()'>后退</a>.....");
%>
</body>
</html>