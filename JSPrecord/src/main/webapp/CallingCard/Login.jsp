<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/25
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    登录系统页面需要完成的工作:
           在数据库中读取当先已存在的用户的信息, 与用户输入提交的进行比较, 如果匹配则登陆成功, 否则登录失败
           注册是向数据库中新增数据的操作

           删除是将数据转移到另一个表中(回收站), 清空回收站才是删除
--%>
    <title>名片系统登录</title>
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
%>
<form action="">
    <div class="form">


    <table>
        <tr>
            <th colspan="2">名片信息管理系统</th>
        </tr>
        <tr>
            <td>姓名: </td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别: </td>
            <td><input type="text" name="gender"></td>
        </tr>
        <tr>
            <td>单位: </td>
            <td><input type="text" name="career"></td>
        </tr>
        <tr>
            <td>电话: </td>
            <td><input type="text" name="phone"></td>
        </tr>

        <tr>
            <td>邮箱: </td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>住址: </td>
            <td><input type="text" name="address"></td>
        </tr>
    </table>
        <span class="button">
            <button onclick="LoginConfirm.jsp">登录</button>
        </span>
        <span class="button">
            <button onclick="Logup.jsp">注册</button>
        </span>
    </div>
</form>
</body>
</html>
<style>

    table{
        text-align: center;
        border: 0px;
        mso-cellspacing: 0px;
        margin: 0px;
    }
    .button,.form{
        text-align: center;
    }
</style>
