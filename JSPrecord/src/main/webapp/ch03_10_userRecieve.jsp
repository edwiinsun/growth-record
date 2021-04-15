<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>用户登录确认页面</title>
</head>
<body>
<%
String _name=request.getParameter("name");
String _password=request.getParameter("password");
if(_name.equals("孙甲河")&&_password.equals("888888"))
{
    %><jsp:forward page="ch03_10_loginCorrect.jsp" /><%
}
else
{
    response.sendRedirect("http://www.baidu.com");
//    如果登录失败就会跳转到百度首页面
//    另外还可以采用response对象的setHeader方法, 实现页面的定时刷新或者重定向跳转功能.
    //(1) response.setHeader("refresh","5");   每隔五秒刷新一次
    //(2) response.setHeader("refresh","10;url=http://www.baidu.com");    延时10秒之后,自动重定向到百度
    //与之对应的html代码使用meta标签实现
    //(3) <meta http-equiv="refresh" content="5" />
    //(4) <meta http-equiv="refresh" content="10;url=http://www.baidu.com" />

}
%>
</body>
</html>
