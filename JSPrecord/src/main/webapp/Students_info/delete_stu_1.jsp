<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head> <title>删除一条记录页面</title> </head>
<body>
<%
String driverName="com.mysql.jdbc.Driver";
String userName="root";
String userPwd="sunwin";
String dbName="mysql";
String url1="jdbc:mysql://localhost:3306/"+dbName;
String url2="?user="+userName+"&password="+userPwd;
String url3="&useUnicode=true&characterEncoding=UTF-8";
String url=url1+url2+url3;

Class.forName(driverName);
Connection conn= DriverManager.getConnection(url);
request.setCharacterEncoding("UTF-8");
sql="delete from stu_info where weight>=?";
pstmt=conn.prepareStatement(sql);
pstmt.setFloat(1,80);
int n=pstmt.executeUpdate(sql);
if(n>=1){%>数据删除操作成功! <br> <%}
else{%>数据删除操作失败! <br> <%}
if(pstmt!=null){ pstmt.close(); }
if(conn!=null){ conn.close(); }%>
</body>
</html>