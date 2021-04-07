<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSP脚本段应用案例</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3>以直角三角形的形式显示数字</h3>
    <% 
    for(int i=1;i<10;i++)
    {
      for(int j=1;j<=i;j++)
      
      {
        out.print(j+" ");   //out是JSP的内置对象, 用于输出信息
      }
      out.println("<br>");  
    }
    %>
    <hr>
    <h3>根据随机产生的数据的不同, 显示不同的问候</h3>
<%
if(Math.random()<0.5)  { %>
Have a <B> nice </B> day!
<%}
else {%>Have a <B> lousy </B> day!
<%}
%>
  </body>
</html>
