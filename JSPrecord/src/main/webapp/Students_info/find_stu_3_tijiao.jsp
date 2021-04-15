<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/11
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>查询条件提交页面</title>
</head>
<body>
请选择查询条件<hr>
<form action="find_stu_3.jsp" methods="post">
性别:
    男<input type="radio" value="男">
    女<input type="radio" value="女">
    <br><br>
    体重范围:
    <p>
        最小<input type="text" name="w1" value="0">
        <br><br>

        最大<input type="text" name="w2" value="150">
    </p>
    <input type="submit" value="提交">
    <input type="reset" value="取消">
</form>
</body>
</html>
<style>
hr{
   width:100%;
  size:3px;
}
</style>