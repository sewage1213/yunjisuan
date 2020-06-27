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
    
    <title>员工查询</title>
    
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
			<th colspan="7"> 查看员工信息</th>
		</tr>
		<tr>
			<td>编号</td>
			<td>职称</td>
			<td>姓名</td>
			<td>电话</td>
			<td>地址</td>
			<td>薪资</td>
			<td>定位</td>
		</tr> 
		<%
			Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		stmt=con.createStatement();
    		String sql="select * from db_user order by userEmail desc";
    		rs=stmt.executeQuery(sql);
    		while(rs.next()){
    		%>
    		<tr>
    			<td><%=rs.getString("userId") %></td>
				<td><%=rs.getString("userPosition") %></td>
    			<td><%=rs.getString("userName") %></td>
    			<td><%=rs.getString("userTel") %></td>
    			<td><%=rs.getString("userAdd") %></td>
    			<td><%=rs.getString("userEmail") %></td>
    			<td><input type="button" value="地址定位" onclick="window.location.href='map.jsp?id=<%=rs.getString("userId") %>'"></td>
    		</tr>
    		<% 
    		}
		 %>
	</table>
</body>

</html>
