<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/5
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>提交计算数据页面</title>
</head>
<body>
<form action="ch07_01_1_response.jsp">
    <div class="main">
        <table>
            <tr>
                <th colspan="2">输入需要计算的数据: </th>
            </tr>
            <tr>
                <td>第一条数据: </td>
                <td> <input type="text" name="num1"> </td>
            </tr>
            <tr>
                <td>第二条数据: </td>
                <td><input type="text" name="num2"></td>
            </tr>
            <tr>
                <td><input type="submit" value="计算"></td>

            </tr>
        </table>
        <%

        %>
    </div>
    </form>
</body>
</html>
