<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/11
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>有提交页面获取查询条件并实现查询的页面</title>
</head>
<body>
<div class="main">


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

    request.setCharacterEncoding("utf-8");
    String sex=request.getParameter("sex");
    double weight1=Double.parseDouble(request.getParameter("w1"));
    double weight2=Double.parseDouble(request.getParameter("w2"));
    String sql="select * from stu_info where sex=? and weight>=? and weight<=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,sex);
    pstmt.setDouble(2,weight1);
    pstmt.setDouble(3,weight2);
    ResultSet rs=pstmt.executeQuery(sql);
    rs.last();  //移至最后一条记录
%>
你要查询的学生的数据表中共有
<p><%=rs.getRow()%></p>人
<table>
    <tr>
        <th>记录条数</th>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>体重</th>
        <th>身高</th>
    </tr>
    <%
    rs.beforeFirst();
    while(rs.next())
    {%>
    <tr>
        <td><%=rs.getRow()%></td>
        <td><%=rs.getString("id")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("sex")%></td>
        <td><%=rs.getString("age")%></td>
        <td><%=rs.getString("weight")%></td>
        <td><%=rs.getString("height")%></td>
    </tr>
    <%}%>
</table>
</div>
<%
    if(rs!=null) {rs.close();}
    if(pstmt!=null){pstmt.close();}
    if(conn!=null){conn.close();}%>
</body>
</html>
<style>
    p{
        size:5px;
        color:red;
    }
    table{
        border:2px;
        bgcolor:"yellow";
        width:650px;
    }
    .main{
        align-content: center;
    }
</style>