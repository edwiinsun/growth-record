<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Edwin
  Date: 2021/4/11
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>修改记录页面</title>
</head>
<body>
<%String driverName="com.mysql.jdbc.Driver";
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
    String sql="update stu_info set weight=? where name=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);

    pstmt.setFloat(1,80);
    pstmt.setString(2,"张三");
    int n=pstmt.executeUpdate(sql);
    if(n==1){%>数据修改操作成功!<br><%}
    else {%>数据修改操作失败!<br><%}
    if(pstmt!=null){pstmt.close();}
    if(conn!=null){conn.close();}
%>


</body>
</html>
