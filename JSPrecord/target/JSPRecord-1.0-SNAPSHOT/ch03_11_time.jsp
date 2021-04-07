<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
