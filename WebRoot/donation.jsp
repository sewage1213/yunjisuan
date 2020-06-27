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
    
    <title>调职公示</title>
    
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
			<th colspan="6"> 调职记录</th>
		</tr>
		<tr>
			<td>调职员工姓名</td>
			<td>调职员工编号</td>
			<td>调职职称去向</td>
			<td>调职薪资调整</td>
			<td>员工调职时间</td>
		</tr> 
		<%
			Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		stmt=con.createStatement();
    		String sql="select * from db_donation";
    		rs=stmt.executeQuery(sql);
    		while(rs.next()){
    		%>
    		<tr>
    			
    			<td><%=rs.getString("userName") %></td>
    			<td><%=rs.getString("userId") %></td>
    			<td><%=rs.getString("userProject") %></td>
    			<td><%=rs.getString("userMoney") %></td>
    			<td><%=rs.getString("userTime") %></td>
    		</tr>
    		<% 
    		}
		 %>
	</table>
</body>

</html>
