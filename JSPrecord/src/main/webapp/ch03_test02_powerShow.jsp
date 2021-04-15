<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/5
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>计算结果显示页面</title>
</head>
<body>
<form action="">
    <form>
        <%
            String _num=request.getParameter("num");
            String _result=request.getParameter("result");
            Double num=Double.parseDouble("_num");
            Double result=Double.parseDouble("_result");
        %>
        <%=num%>的平方是<%=result%>
    </table>
</form>
</body>
</html>
