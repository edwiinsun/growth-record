<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除条件提交页面</title>
</head>
<body>
请选择删除记录条件<hr width="100%" size="3">
<form action="delete_stu_2.jsp" method="post">
姓名：<input type="text" name="name"><br><br>
性别：男<input type="radio" value="男" name="sex">
          女<input type="radio" value="女" naem="sex"><br><br>
         体重范围：<p>
         最小<input type="text" name="w1"><br><br>
         最大<input type="text" name="w2"><p>;
         <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
         <input type="reset" value="取消">
    

</form>
</body>
</html>