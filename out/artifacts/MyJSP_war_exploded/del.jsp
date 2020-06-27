<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除员工信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">      
     body{      
        background-image: url(images/302045.jpg);      
        background-size:cover;    
     }      
 </style>  
  </head>
 
  <body>
  	
    <form action="delCheck.jsp" method="post">
    	<table align="center" width="300">
    		<tr>
    			<th colspan="7" align="center">删除员工信息</th>
    		</tr>
    
    		<tr>
    		
    			<td>员工ID</td>
    			<td><input type="text" name="userId"/></td>
    			<td>你要删除的员工ID</td>
    		</tr>
    		<tr align="center">
    			<td colspan="3">
    				<input type="submit" name="sure" value="确认">
    				&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="reset" name="clear" value="取消">
    			</td>
    			
    		</tr>
    	</table>
    </form>
   
  </body>
</html>