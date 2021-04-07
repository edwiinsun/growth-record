<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>两数相加-结果显示页面</title>
</head>
<body>
<form>
    <%
    String str1=request.getParameter("first");
    String str2=request.getParameter("second");
    double number1=Double.parseDouble(str1);
    double number2 = Double.parseDouble(str2);
double result=number1+number2;
request.setAttribute("st1",number1);
request.setAttribute("st2",number2);
request.setAttribute("res",result);
    %><jsp:forward page="ch03_08_calculateOutput.jsp"></jsp:forward>
</form>
</body>
</html>
