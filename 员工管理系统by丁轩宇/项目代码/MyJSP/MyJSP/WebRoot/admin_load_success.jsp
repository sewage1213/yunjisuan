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
    
    <title>My JSP 'load_succss.jsp' starting page</title>
    
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

	<center>
	<table border="0"  style="background-image:url(images/302045.jpg)" align="left" cellpadding="0" cellspacing="0">
	 
	 <tr>
		<td width="1500" height="700">
			<form name="ThisForm" method="POST" action="">
				<table width="410" height="198" border="0" align="right" cellpadding="0" cellspacing="0">
<%--					<font face="楷体" size="20" color="red"> <jsp:getProperty name="loginname" property="userName"/>恭喜你，成功了！！！</font>--%>
					<font face="楷体" size="20" color="red"> <jsp:getProperty name="loginname" property="adminName"/>恭喜你，登录成功！</font>
                </table>
	        </form>
        </td>
     </tr>
    </table>
    </center>
</body>
</html>
