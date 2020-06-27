<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	  <style>
		  .expa{ width:100%; height:100%; border:0px; }
		  .expb{ width:200px; height:120px; border:1px solid #00F}
	  </style>
  </head>
  
  <body>

	<center>
	<div style="background-image:url(images/302045.jpg)" class="expa">

		<p style="font-family: 楷体; font-size: 60px; color: #e30b06; align-content: center; padding: 200px; margin: 0; float: inherit" > 欢迎进入员工管理系统 </p>

	</div>
<%--		<table border="0"  style="background-image:url(images/图腾.jpg)" align="left" cellpadding="0" cellspacing="0">--%>

<%--			<tr>--%>
<%--				<td width="1500" height="700">--%>
<%--					<form name="ThisForm" method="POST" action="">--%>
<%--						<table width="410" height="198" border="0" align="center" cellpadding="0" cellspacing="0">--%>

<%--							<p style="font-family: 楷体; font-size: 80px; color: #e30b06; align-content: inherit" > 校友信息管理系统首页 </p>--%>

<%--						</table>--%>
<%--					</form>--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--		</table>--%>
    </center>
</body>
</html>
