<%--
  Created by IntelliJ IDEA.
  User: Jiahe Sun
  Date: 2021/4/1
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息输入页面</title>
</head>
<body>
<form action="ch03_07_infoRecieve.jsp" method="post">

<label>
    姓名: <input  name="_name" placeholder="请输入姓名"> <br>
</label>
   <label>
       电话: <input  type="number" name="_phone"> <br>
   </label>

    <input type="submit" value="提交">
</form>
</body>
</html>
