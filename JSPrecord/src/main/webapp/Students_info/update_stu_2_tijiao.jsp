<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head> <title>修改记录的条件提交页面</title></head>
<body>
请选择修改记录所满足的条件<hr>
<form action= "update stu 2 edit.jsp" method="post"> 
<br>
姓名: <input type="text" name ="name"><br><br>
性别: 男 <input type="radio" value ="男" name ="sex">
	    女<input type="radio"value ="女" name ="sex"><br><br>
	    <input type="submit" value="提交">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="取消">
</form>
</body>
</html>