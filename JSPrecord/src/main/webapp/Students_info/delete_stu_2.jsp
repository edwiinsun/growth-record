<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>利用提交条件删除记录页面</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
String sex=request.getParameter("sex");
String ww1=request.getParameter("w1");
String ww2=request.getParameter("w2");
String s="1=1";
if(!name.equals(""))s=s+" and name='"+name+"'";
if(sex!=null) s=s+" and sex='"+sex+"'";
float w1,w2;
if(!ww1.equals("")){w1=Float.parseFloat(ww1);s=s+"and weight>="+w1;}
if(!ww2.equals("")){w2=Float.parseFloat(ww2);s=s+"and weight>="+w2;}
PreparedStatement stmt=conn.prepareStatement(sql);
int n=pstmt.executeUpdate();
if(n==1) {%> 数据删除成功！<br><% }
else {%> 数据删除操作失败！<br><% }
if(stmt!=null){stmt.close();}
if(conn!=null){conn.close();}
%>
</body>
</html>