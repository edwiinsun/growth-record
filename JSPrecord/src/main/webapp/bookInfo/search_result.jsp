<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询结果显示页面</title>
</head>
<body>
<%
    String driverName="com.mysql.jdbc.Driver";
    String userName="root";
    String userPwd="sunwin";
    String dbName="lianxi";
    String url1="jdbc:mysql://localhost:3306/"+dbName;
    String url2="?user="+userName+"&password="+userPwd;
    String url3="&useUnicode=true&characterEncoding=UTF-8";
    String url=url1+url2+url3;
    Class.forName(driverName);
    Connection connec= DriverManager.getConnection(url);

    String _searchNo=request.getParameter("bookNo");
    String _searchName=request.getParameter("bookName");
    String _searchAuth=request.getParameter("bookAuth");
    double _searchPrice=Double.parseDouble(request.getParameter("bookPrice"));
    String _mark=request.getParameter("mark");

    String options="select * from book where bookNo=? and bookName=? and auth=? and price=? and mark=?";
    PreparedStatement pstmt=connec.prepareStatement(options);
    pstmt.setString(1,_searchNo);
    pstmt.setString(2,_searchName);
    pstmt.setString(3,_searchAuth);
    pstmt.setDouble(4,_searchPrice);
    pstmt.setString(5,_mark);

    ResultSet rs=pstmt.executeQuery(options);
    rs.last();   //移至最后一条记录
%>
<form action="">
    你要查询的图书的数据表中共有
    <p><%=rs.getRow()%></p>本图书
    <div id="main">
        <table>
        <tr>
            <th>记录条数</th>
            <th>图书编号</th>
            <th>图书名称</th>
            <th>图书作者</th>
            <th>图书单价</th>
            <th>  备注  </th>
        </tr>
        <%
        rs.beforeFirst();
        while(rs.next())
        {%>
        <tr>
            <td><%=rs.getString("_bookNo") %></td>
            <td><%=rs.getString("_bookName") %></td>
            <td><%=rs.getString("_auth") %></td>
            <td><%=rs.getDouble("_bookPrice") %></td>
            <td><%=rs.getString("_mark") %></td>
        </tr>
        <%}%>
    </table>

    <%
        if(rs!=null) {rs.close();}
        if(pstmt!=null){pstmt.close();}
        if(connec!=null){connec.close();}
    %>
    </div>

</form>
</body>
</html>
<style>
    #main{
        align-content: center;
    }
    tr{
        text-align: center;
    }
    table{
        border: 2px;
        background-color: yellow;
        width:650px;
    }
    p{
        size:5px;
        color:red;
    }

</style>