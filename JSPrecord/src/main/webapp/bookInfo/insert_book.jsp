<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增图书</title>
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

String _bookNo= request.getParameter("bookNo");
String _bookName= request.getParameter("bookName");
String _auth= request.getParameter("auth");
int _price=Integer.parseInt(request.getParameter("price"))
String _mark= request.getParameter("mark");


    String sql="Insert into book(bNo,bName,auth,price,mark) value(?,?,?,?,?)";
    PreparedStatement pstmt=connec.prepareStatement(sql);
    pstmt.setString(1,_bookNo);
    pstmt.setString(2,_bookName);
    pstmt.setString(3,_auth);
    pstmt.setDouble(4,_price);
    pstmt.setString(5,_mark);

    int flag = pstmt.executeUpdate();   //检查是否成功插入

%>
if(flag==1) {
<div class="flag">
    <p>图书信息插入成功! </p>

<%--这里还可以继续扩充内容， 可以加上下一步执行信息   可以加一个button  继续添加--%>
</div>

}else
{
<div class="flag">
<p>图书信息插入失败, 请重试! </p>
</div>
}
<%
    if(pstmt!=null)pstmt.close();
    if(connec!=null)connec.close();%>
</body>
</html>
