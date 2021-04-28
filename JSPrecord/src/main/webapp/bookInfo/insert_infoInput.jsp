<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息输入</title>
</head>
<body>
<form action="insert_book.jsp">


    <table id="table">
        <tr>
            <td colspan="2">图书信息插入表单</td>
        </tr>
        <tr class="form">
            <td>图书号:</td>
            <td><input name="bookNo" type="text"></td>
        </tr>
        <tr class="form">
            <td>图书名:</td>
            <td><input name="bookName" type="text"></td>
        </tr>
        <tr class="form">
            <td>作 者:</td>
            <td><input name="auth" type="text"></td>
        </tr>
        <tr class="form">
            <td>价 格:</td>
            <td><input name="price" type="text"></td>
        </tr>
        <tr class="form">
            <td>备注信息:</td>
            <td><input name="mark" type="text"></td>
        </tr>
        <div>
            <span><input value="确定" type="submit"></span>
        </div>
    </table>
</form>
</body>
</html>
<style>
    .form {
        text-align: center;
    }

    #table {
        border: 0px;
    }
</style>
