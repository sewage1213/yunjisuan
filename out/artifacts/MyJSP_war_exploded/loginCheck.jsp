<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登陆数据处理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<jsp:useBean id="loginname" class="bean.namebean" scope="application"/>

  </head>
  
  <body>
  	<%
  		String userName=new String (request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
  		%>
  		<jsp:setProperty property="userName" name="loginname" value="<%=userName %>"/>
  		<%
    	String userPassword=new String (request.getParameter("userPassword").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con=null;
    	Statement st=null;
    	ResultSet rs=null;
    	if(userName.equals("")){
    		response.sendRedirect("login.jsp");
    	}
    	
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		st=con.createStatement();
    		String query="select *from db_user where userName='"+userName+"'";
    		
    		rs=st.executeQuery(query);
    	    if(rs.next()){
    			String query2="select *from db_user where userPassword='"+userPassword+"'";
    			rs=st.executeQuery(query2);
    			if(rs.next()){
    				response.sendRedirect("load_succss.jsp");
    				
    			}else{
    				response.sendRedirect("login.jsp");
    			}
    		
    		}
  
    	rs.close();
    	st.close();
    	con.close();
     
  	 %>
    
  </body>
</html>
