<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_login.jsp' starting page</title>
    
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
	
	<center>
	<table border="0"  style="background-image:url(images/302045.jpg)" align="left" cellpadding="0" cellspacing="0">
	 <tr>
	    <td class="title"><div align="center">管理员登录</div></td>
	 </tr>
	 <tr>
		<td width="1500" height="700">
			<form name="ThisForm" method="POST" action="admin_loginCheck.jsp">
				<table width="410" height="198" border="0" align="right" cellpadding="0" cellspacing="0">
					
			        <tr>
						<th>用&nbsp;户&nbsp;名:&nbsp;</th>
						<td><input name="adminName"  type="text" class="input2" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					
					<tr>
						<th>密&nbsp;&nbsp;&nbsp;&nbsp;码：</th>
						<td><input name="adminPw" type="password" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					
			<%-- 		<tr>
						<th>身&nbsp;&nbsp;&nbsp;&nbsp;份：</th>
					    <td><select class="INPUT_text" name="userType">
							    <option value="-1" selected="selected">请选择登陆身份</option>
								<option value="0">管理员</option>
								<option value="1">校    友</option>
								
							 </select>
                        </td>
				    </tr>
			--%>
					<tr>
						<td colspan="2">&nbsp; &nbsp; &nbsp; &nbsp;
							<input name="button" type="submit" class="submit1" value="登录" > &nbsp;
							<input name="Submit2" type="reset" class="submit1" value="重置">
							
						</td>
				    </tr>
                </table>
	        </form>
        </td>
     </tr>
    </table>
    </center>
</body>
</html>
