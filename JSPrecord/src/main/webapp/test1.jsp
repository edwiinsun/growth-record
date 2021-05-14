<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加</title>
</head>
<body>
<h1 align="center">学生信息添加</h1>
<hr>
	<form action="../Main2/Add1.jsp" method="post">
		<table align="center">
			<tr>
				<td>学号</td><td><input type="number" name="sid" value=""></td>
			</tr>
			<tr>
				<td>姓名</td><td><input type="text" name="sname" value=""></td>
			</tr>
			<tr>
				<td>性别</td><td><input type="text" name="ssex" value=""></td>
			</tr>
			<tr>
				<td>年龄</td><td><input type="number" name="sage" value=""></td>
			</tr>
			<tr>
				<td>体重</td><td><input type="text" name="sweight" value=""></td>
			</tr>
			<tr>
				<td>身高</td><td><input type="text" name="shight" value=""></td>
			</tr>
			<tr>
				<td></td><td><input type="submit" value="确定" >&nbsp;&nbsp;&nbsp;
							<input type="reset" value="取消" ></td>
			</tr>
		</table>
	</form>	
</body>
</html>
