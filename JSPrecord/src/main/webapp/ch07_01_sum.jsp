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
    <title>0-100求和页面</title>
</head>
<body>
<form action="" id="main">

        <%
           int sum=0;
           for(int i=1;i<=100;i++)
           {
               sum+=i;
           }

        %>
        结果是: <%=sum%>
        </table>
    </form>
</body>
</html>
<style>
    #main{
        text-align: center;
    }
</style>