<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
  Created by IntelliJ IDEA.
  User: ediwn
  Date: 2021/4/8
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>Title</title>
</head>
<body>
<%
    String driverName="com.mysql.jdbc.Driver";
    String userName="root";
    String userPwd="sunwin";
    String dbName="win";
    String url1="jdbc:mysql://localhost:3306/"+dbName;
    String url2="?user="+userName+"&password="+userPwd;
    String url3="&useUnicode=true&characterEncoding=UTF-8";
    String url=url1+url2+url3;
    Class.forName(driverName);
    Connection conn= DriverManager.getConnection(url);
    String sql="Insert into stu_info(id,name,sex,age,weight,hight) values(?,?,?,?,?,?)";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    request.setCharacterEncoding("UTF-8");

    int id=Integer.parseInt(request.getParameter("a1"));
    String name=request.getParameter("a2");
    String sex=request.getParameter("a3");
    int age=Integer.parseInt(request.getParameter("a4"));
    Float weight=Float.parseFloat(request.getParameter("a5"));
    Float hight=Float.parseFloat(request.getParameter("a6"));
    System.out.println(id+" "+name+" "+sex+" "+age+" "+weight+" "+hight);

    pstmt.setInt(1,id);
    pstmt.setString(2,name);
    pstmt.setString(3,sex);
    pstmt.setInt(4,age);
    pstmt.setFloat(5,weight);
    pstmt.setFloat(6,hight);
    int n=pstmt.executeUpdate();
    if(n==1){%>数据插入成功<br>
<% }else {%>插入数据失败！<br>
<%}if(pstmt!=null)pstmt.close();
    if(conn!=null)conn.close();


%>



</body>
</html>
