<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>用户登录</title>
</head>
<body>
<form method="post" action="ch03_10_userRecieve.jsp">
    <form>
        用户名: <input type="text" name="name" placeholder="请输入用户名"> <br>
        密 码: <input type="password" name="password" placeholder="输入登录密码"> <br>
        <input type="submit" value="登录">
    </form>
</form>
</body>
</html>
