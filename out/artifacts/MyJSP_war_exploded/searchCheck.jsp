<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  	
  <body>
    	<table align="center" width="900" border="4">

		<tr>
			<th colspan="6"> 查看员工信息</th>
		</tr>
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>电话</td>
			<td>地址</td>
			<td>邮箱</td>
		</tr> 
		<%
			String text = new String( request.getParameter("text").getBytes("ISO-8859-1"),"utf-8");
			Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=utf-8";
    		con=DriverManager.getConnection(url,"root","123456");
    		stmt=con.createStatement();
//    		String sql="select * from db_user where userName='"+text+"'";
			String sql="select * from db_user where userName like '%"+text+"%' order by userId";
    		rs=stmt.executeQuery(sql);
    		while(rs.next()){
    		%>
    		<tr>
    			<td><%=rs.getString("userId") %></td>
    			<td><%=rs.getString("userName") %></td>
    			<td><%=rs.getString("userTel") %></td>
    			<td><%=rs.getString("userAdd") %></td>
    			<td><%=rs.getString("userEmail") %></td>
    		</tr>
    		<% 
    		}
		 %>
	</table>
    	
    	
  </body>
</html>
