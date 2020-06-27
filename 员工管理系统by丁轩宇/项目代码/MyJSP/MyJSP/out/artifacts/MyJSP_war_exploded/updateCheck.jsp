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
    
    <title>My JSP 'updateCheck.jsp' starting page</title>
    
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
     <%  	
    	String userName=new String (request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
    	String userId=new String (request.getParameter("userId").getBytes("ISO-8859-1"),"UTF-8");
    	String userTel=new String (request.getParameter("userTel").getBytes("ISO-8859-1"),"UTF-8");
    	String userAdd=new String (request.getParameter("userAdd").getBytes("ISO-8859-1"),"UTF-8");
    	String userEmail=new String (request.getParameter("userEmail").getBytes("ISO-8859-1"),"UTF-8");
    	String userPassword=new String (request.getParameter("userPassword").getBytes("ISO-8859-1"),"UTF-8");
    	String userPosition=new String (request.getParameter("userPosition").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con=null;
    	Statement st=null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		st=con.createStatement();
    		String sql="update db_user set userName='"+userName+"',userId='"+userId+"',userTel='"+userTel+"',userAdd='"+userAdd+"',userEmail='"+userEmail+"',userPassword='"+userPassword+"',userPosition='"+userPosition+"' where userId='"+userId+"'";
    		st.executeUpdate(sql);
    		response.sendRedirect("AddSuccss.jsp");
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	finally{
    	st.close();
    	con.close();
    	}
     %>
  </body>
</html>
