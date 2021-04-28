<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除图书结果页面</title>
</head>
<body>
<%
    String driverName = "com.mysql.jdbc.Driver";
    String userName = "root";
    String userPwd = "sunwin";
    String dbName = "lianxi";
    String url1 = "jdbc:mysql://localhost:3306/" + dbName;
    String url2 = "?user=" + userName + "&password=" + userPwd;
    String url3 = "&useUnicode=true&characterEncoding=UTF-8";
    String url = url1 + url2 + url3;
    Class.forName(driverName);
    Connection connec = DriverManager.getConnection(url);

    String _bookNo = request.getParameter("bookNo");
    String _bookName = request.getParameter("bookName");
    String _auth = request.getParameter("auth");
    double _price = Double.parseDouble(request.getParameter("price"));
    String _mark = request.getParameter("mark");
    String queryPath = "";
    if (!_bookNo.equals("")) queryPath += "bookNo=' " + _bookNo + "' ";
    if (!_bookName.equals("")) queryPath +=  "and bookName='" + _bookName + "'";
    if (!_auth.equals("")) queryPath +=  "and auth='" + _auth + "' ";
    if (!_mark.equals("")) queryPath +=  " and mark='" + _auth + "' and ";
    queryPath = "delete * from book where " + queryPath + " price=" + _price;
    PreparedStatement pstmt = connec.prepareStatement(queryPath);

    int flag = pstmt.executeUpdate();
%>if(flag==1){
<div class="flag">
    <p>
        数据删除成功!
    </p>
</div>
}
else
{
<div class="flag">
    <p>
        数据删除失败, 请重试!
    </p>
</div>

}<%
    if (pstmt != null) {
        pstmt.close();
    }
    if (connec != null) {
        connec.close();
    }
%>
</body>
</html>
<style>
    .flag{
    text-align: center;
    }
</style>