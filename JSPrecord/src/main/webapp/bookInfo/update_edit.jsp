<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息修改页面</title>
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
    request.setCharacterEncoding("UTF-8"); //设置字符编码，避免出现乱码


    String _bookNo = request.getParameter("bookNo");
    String _bookName = request.getParameter("bookName");
    String _auth = request.getParameter("auth");
    double _price = Double.parseDouble(request.getParameter("price"));
    String _mark = request.getParameter("mark");
    session.setAttribute("bookNo", _bookNo);
    session.setAttribute("bookName", _bookName);
    session.setAttribute("auth", _auth);
    session.setAttribute("mark", _mark);
    //价格
    String queryPath = "select * from book where bookNo=? and bookName=? and auth=? and mark=? and price=?";
    PreparedStatement pstmt = connec.prepareStatement(queryPath);
    pstmt.setString(1, _bookNo);
    pstmt.setString(2, _bookName);
    pstmt.setString(3, _auth);
    pstmt.setString(4, _mark);
    ResultSet res=pstmt.executeQuery();
//    pstmt.setString(5, String.valueOf(_price));
    if(res.next()){
        String BookNumber= res.getString("_bookNo");
        String BookName=res.getString("_bookName");
        String _Auther=res.getString("_auth");
        int _Price=res.getInt("_price");
      String _Mark=res.getString("_mark");

        if(res!=null){ res.close(); }
        if(pstmt!= null){ pstmt.close(); }
        if(connec!=null){ connec.close();}

%>
<form action="updata_result.jsp">
    <table class="main">
        <tr>
            <td>图书编号:</td>
            <td><input name="bookNo" type="text" value=<%=_bookNo%>></td>

        </tr>
        <tr>
            <td>图书名称:</td>
            <td><input name="bookName" type="text" value=<%=_bookName%>></td>

        </tr>
        <tr>
            <td>图书作者:</td>
            <td><input name="bookAuth" type="text" value=<%=_auth%>></td>

        </tr>
        <tr>
            <td>图书单价:</td>
            <td><input name="bookPrice" type="text" value=<%=_price%>></td>

        </tr>
        <tr>
            <td>备 注:</td>
            <td><input name="mark" type="text" value=<%=_mark%>></td>

        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="取  消"></td>
        </tr>
    </table>
</form>
 <%
    if(res!=null){ res.close(); }
    if(pstmt!=null){ pstmt.close(); }
    if(connec!=null){ connec.close(); }
    }%>
</body>
</html>
<style>
    tr{
        text-align: center;
    }
    .main{
        border: 0px;
        width: 238px;
        method:post;
    }
</style>