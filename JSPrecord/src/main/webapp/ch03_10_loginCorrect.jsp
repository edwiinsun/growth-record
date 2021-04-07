<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆成功显示页面</title>
</head>
<body>
 <%
     String name= request.getParameter("_name");

%>
欢迎 <%=name%> 回来, 继续工作吧!
</body>
</html>
