<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/22
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询图书信息提交</title>
</head>
<body>
<form action="search_result.jsp">
    <table>
        <tr>
            <th colspan="2">查询条件提交</th>

        </tr>
        <tr>
            <td>图书编号:</td>
            <td><input name="bookNo" type="text"></td>

        </tr>
        <tr>
            <td>图书名称:</td>
            <td><input name="bookName" type="text"></td>

        </tr>
        <tr>
            <td>图书作者:</td>
            <td><input name="bookAuth" type="text"></td>

        </tr>
        <tr>
            <td>图书单价:</td>
            <td><input name="bookPrice" type="text"></td>

        </tr>
        <tr>
            <td>备 注:</td>
            <td><input name="mark" type="text"></td>

        </tr>
        <tr>
            <input type="submit" value="提交">
            <input type="reset" value="重置">
        </tr>
    </table>
</form>
</body>
</html>
<style>
    tr {
        text-align: center;
    }
</style>
