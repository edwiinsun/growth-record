<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/2
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统计网站访问人数以及当前在线人数</title>
</head>
<body>
<%! Integer yourNumber=new Integer(0);%>

<%
if(session.isNew())
{
    Integer number=(Integer)application.getAttribute("Count");
    if(number==null) {
        number=new Integer(1);
    }
    else {
    number=new Integer(number.intValue()+1);
    }
    application.setAttribute("Count",number);
    yourNumber=(Integer)application.getAttribute("Count");
    }

%>
<div class="div"><span>
    欢迎访问本站, 您是第<%=yourNumber%> 位用户!
</span></div>

</body>
</html>
<style>
    .div{
        text-align: center;
    }
</style>
