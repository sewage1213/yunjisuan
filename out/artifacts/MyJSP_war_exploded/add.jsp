<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加员工信息</title>
    
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
  	
    <form action="addCheck.jsp" method="post">
    	<table align="center" width="300">
    		<tr>
    			<th colspan="7" align="center">添加员工信息</th>
    		</tr>
    		<tr>
    			<td>员工姓名</td>
    			<td><input type="text" name="userName"/></td>
    		</tr>
    		<tr>
    			<td>员工编号</td>
    			<td><input type="text" name="userId"/></td>
    		</tr>
			<tr>
				<td>员工职称</td>
				<td><input type="text" name="userPosition"/></td>
			</tr>
			<tr>
				<td>员工薪资</td>
				<td><input type="text" name="userEmail"/></td>
			</tr>
    		<tr>
    			<td>员工电话</td>
    			<td><input type="text" name="userTel"/></td>
    		</tr>
    		<tr>
    			<td>员工住址</td>
    			<td><input type="text" name="userAdd"/></td>
    		</tr>
    		<tr>
    			<td>登陆密码</td>
    			<td><input type="text" name="userPassword"/></td>
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
