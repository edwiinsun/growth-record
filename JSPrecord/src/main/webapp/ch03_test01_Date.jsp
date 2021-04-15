<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/5
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>当前时间</title>
</head>
<body>
<table class="date">
    <tr>
        <th>
            当前时间
        </th>
    </tr>
    <tr>
        <td>
            当前的日期时间是:  <%=new Date()%>
        </td>
    </tr>
</table>

</body>
</html>
<style>
    .date {
        align-content: center;
    }
</style>