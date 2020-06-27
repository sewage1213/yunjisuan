<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
    <style type="text/css">
    *{padding:0px; margin:0px;}
    body 
    {
	  margin-left: 0px;
	  font-family:'microsoft yahei';
	  background-image:url(images/s19.jpg);
	  background-size:cover;
	 <%-- background:url('<%=path %>/img/login_bg.jpg');--%>
	  padding-top:160px;
    }
    .style2 {color: #990000}
    .input2 
    {
 	   font-size: 12px;
	   border: 3px double #A8D0EE;
	   color: #344898;
    }
    .submit1 
    {
	   border: 3px double #416C9C;
	   height: 22px;
	   width: 45px;
	   background-color: green;<%--按钮--%>
	   font-size: 12px;
	   padding-top: 1px;
	   background-image: url(bt.gif);
	   cursor: hand;
    }

    .title{ padding:10px 0px;padding-top:20px;}
    .title div{FONT-WEIGHT: bold; FONT-SIZE:30px;}
    
    table th{width:80px; text-align:right; }
 </style>
 
 
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>`
 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
 <script language="javascript">
 function check1()
 {                                                                                         
     if(document.ThisForm.userName.value=="")
	 {
	 	alert("请输入用户名");
		document.ThisForm.userName.focus();
		return false;
	 }
	 if(document.ThisForm.userPw.value=="")
	 {
	 	alert("请输入密码");
		document.ThisForm.userPw.focus();
		return false;
	 }
 }

 function callback(data)
 {
    document.getElementById("indicator").style.display="none";
    if(data=="no")
    {
        alert("用户名或密码错误");
    }
    if(data=="yes")
    {
        alert("登陆成功");
        window.location.href="<%=path %>/loginSuccess.jsp";
    }
 }
 </script>
  <style type="text/css">      
     body{      
        background-image: url(images/302045.jpg);      
        background-size:cover;    
     }      
 </style>  
</head>
<body>

 
<body>
	
	<center>
	<table style="font-size:12px;">
	 <tr>
	    <td class="title"><div align="center">员工登陆</div></td>
	 </tr>
	 </table>
	 <tr>
		<td width="10" height="700">
			<form name="ThisForm" method="POST" action="loginCheck.jsp">
				<table width="410" height="198" border="0" align="center" cellpadding="0" cellspacing="0">
					<tbody align="center">
						<tr>
							<th>用&nbsp;户&nbsp;名:&nbsp;</th>
						<td><input name="userName"  type="text" class="input2" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
								</td>
						</tr>

						<tr>
							<th>密&nbsp;&nbsp;&nbsp;&nbsp;码：</th>
							<td><input name="userPassword" type="password" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
							</td>
						</tr>
						<tr>
							<td colspan="2">&nbsp; &nbsp; &nbsp; &nbsp;
								<input name="button" type="submit" class="submit1" value="登录" onclick="check1()"> &nbsp;
								<input name="Submit2" type="reset" class="submit1" value="重置">
							</td>
						</tr>
					</tbody>
                </table>
	        </form>
        </td>
    	</tr>
    </center>

</body>

</html>
