<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息接受回显页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
String name= request.getParameter("_name");
String phone=request.getParameter("_phone");
%>
<form>
    <tabel font="楷体" size="4" color="blue">
        请核实您的信息: <br>
        姓名: <%=name%> <br>
        电话: <%=phone%> <br>
      <a href="ch03_06_infoInput.jsp">    <input type="button" value="重新输入"> </a>

    </tabel>

</form>
</body>
</html>
<style>

</style>
