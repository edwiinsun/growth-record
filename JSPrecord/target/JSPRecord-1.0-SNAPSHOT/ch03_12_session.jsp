<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>利用 session对象获取会话信息并显示</title>
</head>
<body>
<hr>
<div class="div">
    <span>
        session 的创建时间是: <%=new Date(session.getCreationTime())%> <br>
<%--建立一个初始时间, 因为session是在客户端保持运行时会一直保存的信息, 建立session后可以一直使用--%>
        session 的创建的ID: <%=session.getId()%> <br>
        客户最近一次的访问时间:
        <%=new java.sql.Time(session.getLastAccessedTime())%> <br>
        两次请求间隔多长时间session 将被取消(ms):
        <%=session.getMaxInactiveInterval()%> <br>
        是否是新创建的 session:<%=session.isNew()?"是":"否"%>
    </span>
</div>

</body>
</html>
<style>
    .div{
        text-align: center;
    }
</style>