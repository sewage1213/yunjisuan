<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>通知信息查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body bgcolor="lightgreen">
	<table align="center" width="900" border="4">
		<tr>
			<th colspan="6"> 查看通知信息</th>
		</tr>
		<tr>
			<td>类型</td>
			<td align="center">内容</td>
		</tr> 
		<%
			Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		stmt=con.createStatement();
    		String sql="select * from db_message";
    		rs=stmt.executeQuery(sql);
    		while(rs.next()){
    		%>
    		<tr>
    			<td><%=rs.getString("userName") %></td>
    			<td><%=rs.getString("userMessage") %></td>
    		</tr>
    		<% 
    		}
		 %>
	</table>
</body>

</html>
