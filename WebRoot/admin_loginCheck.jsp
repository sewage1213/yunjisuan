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
    
    <title>管理员登陆数据处理</title>
    
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
    	String adminName=new String (request.getParameter("adminName").getBytes("ISO-8859-1"),"UTF-8");
	%>
	<jsp:setProperty property="adminName" name="loginname" value="<%=adminName %>"/>

	<%
    	String adminPw=new String (request.getParameter("adminPw").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con=null;
    	Statement st=null;
    	ResultSet rs=null;
    	if(adminName.equals("")){
    		response.sendRedirect("admin_login.jsp");
    	}
    	//try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/db_myjsp?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		st=con.createStatement();
    		String query="select *from db_admin where adminName='"+adminName+"'";
    		rs=st.executeQuery(query);
    	    if(rs.next()){
    			String query2="select *from db_admin where adminPw='"+adminPw+"'";
    			rs=st.executeQuery(query2);
    			if(rs.next()){
    				request.setAttribute(adminName, "Admin");
    				response.sendRedirect("admin_load_success.jsp");
    			}else{
    				response.sendRedirect("admin_login.jsp");
    			}
    		
    		}
    /* 	
    	}catch(Exception e){
    	e.printStackTrace();
    	}finally{ */
    	rs.close();
    	st.close();
    	con.close();
     //}
     %>
  </body>
</html>
