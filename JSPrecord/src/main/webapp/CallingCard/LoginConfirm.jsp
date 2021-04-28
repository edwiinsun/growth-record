<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/25
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        登录回馈页面
    </title>
</head>
<body>
<%
    /* 数据库连接 */
    String driverName="com.mysql.jdbc.Driver";
    String userName="root";
    String userPwd="sunwin";
    String dbName="CallingCard";
    String url1="jdbc:mysql://localhost:3306/"+dbName;
    String url2="?user="+userName+"&password="+userPwd;
    String url3="&useUnicode=true&characterEncoding=UTF-8";
    String url=url1+url2+url3;
    Class.forName(driverName);
    Connection conn= DriverManager.getConnection(url);
    request.setCharacterEncoding("UTF-8"); //设置字符编码，避免出现乱码

    String _
%>

</body>
</html>
