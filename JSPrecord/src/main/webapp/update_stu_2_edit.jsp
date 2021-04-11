<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head><title>修改编辑页面</title> </head>
<body>
<%String driverName="com.mysql.jdbc.Driver";
String userName="root";
String userPwd="sunwin";
String dbName="win"; 
String url1="jdbc:mysql://localhost:3306/"+dbName;
String url2="?user="+userName+"&password="+userPwd;
String url3="&useUnicode=true&characterEncoding=UTF-8";
String url=url1+url2+url3;
Class.forName(driverName);
Connection conn= DriverManager.getConnection(url);
request.setCharacterEncoding("UTF-8"); //设置字符编码，避免出现乱码
String sex=request.getParameter("sex");
String name=request.getParameter("name");
session.setAttribute("sex",sex);
session.setAttribute("name" ,name);
String sql="select * from stu_info where sex=? and name=?";
PreparedStatement pstmt= conn.prepareStatement(sql);
pstmt.setString(1,sex);
pstmt.setString(2,name);
ResultSet rs=pstmt.executeQuery();
if(rs.next()){
int id=rs.getInt("id");
String name2=rs.getString("name");
String sex2=rs.getString("sex");
int age=rs.getInt("age");
float weight=rs.getFloat("weight");
float hight=rs.getFloat("hight");
if(rs!=null){ rs.close(); }
if(pstmt!= null){ pstmt.close(); }
if(conn!=null){ conn.close();}
%>
<form action="update_stu_2.jsp" method="post">
<table border="0" width="238" height="252">
<tr><td>学号</td><td><input name="id" value =<%=id%>></td></tr>
<tr><td>姓名</td><td><input name="name2" value=<%=name2%>></td></tr>
<tr><td>性别</td><td><input name="sex2" value=<%=sex2%>></td></tr>
<tr><td>年龄</td><td><input name="age" value=<%=age%>></td></tr>
<tr><td>体重</td><td><input name="weight"value=<%=weight%>></td></tr>
<tr><td>身高</td><td><input name="hight"value=<%=hight%>></td></tr>
<tr align="center">
<td colspan="2">
<input type ="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;
<input type ="reset" value="取  消"> </td> </tr>
</table>
</form>
<%}
else {%>
没有找到合适条件的记录! ! <%
if(rs!=null){ rs.close(); }
if(pstmt!=null){ pstmt.close(); }
if(conn!=null){ conn.close(); }
}%>
</body>
</html>