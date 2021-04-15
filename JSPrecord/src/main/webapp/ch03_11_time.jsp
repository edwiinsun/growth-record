<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>What time is it?</title>
</head>
<body>
当前时间是: <%=new Date().toLocaleString()%> <br>

<%--目前toLocalString已经被弃用
--%>
<hr>
<%response.setHeader("refresh","1");%>
</body>
</html>
