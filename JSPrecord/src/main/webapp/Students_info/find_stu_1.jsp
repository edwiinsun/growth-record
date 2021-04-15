<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/11
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>显示所有学生的页面</title>
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

String sql="select * from stu_info";
PreparedStatement pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery(sql);
rs.last();  //移至最后一条记录
%> 你要查询的学生数据表中共有
    <p><%=rs.getRow()%>
    </p>人
    <table>
        <tr >
            <td>记录条数</td>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>体重</td>
            <td>身高</td>
        </tr>
            <%
        rs.beforeFirst();  //移至第一条之前
        while(rs.next())
        {%>
        <tr >
             <td>
            <%=rs.getRow("")%></td>
        <td><%=rs.getString("id")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("sex")%></td>
        <td><%=rs.getString("age")%></td>
        <td><%=rs.getString("weight")%></td>
        <td><%=rs.getString("height")%></td>
        </tr>
    <%}
        %>
    </table>
</div>
<%
if(rs!=null) {rs.close();}
if(pstmt!=null){pstmt.close();}
if(conn!=null){conn.close();}%>
</body>
</html>
<style>
*{
    align:center;
}
table{
    border:2px;
     bgcolor:blue;
      width:650px;
}
tr{
    bgcolor:red;
      align:center;
}
p{
    size:5px;
    color:red;
    
}
.main{
    text-align: center;
}
</style>