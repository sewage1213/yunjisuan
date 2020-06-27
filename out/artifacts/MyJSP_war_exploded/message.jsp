<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <title>My JSP 'message.jsp' starting page</title>  
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
    <center>  
    <font face="楷体" size="6" color="#000">通知界面</font>
    <form action = "messageCheck.jsp" method = "post" onsubmit = "return validate()">  
    <table width="300" height = "180" border="5" bordercolor="#A0A0A0">  
      <tr>  
        <th>类型：</th>
        <td><input type="text" name="userName" /></td>  
      </tr>  
       <tr>  
        <th>内容：</th>
        <td><input type="text" name="userMessage" /></td>  
      </tr>  
      
      <tr>  
        <td colspan = "9" align = "center">  
          <input type="submit" value="提 交">      
          <input type="reset" value="重  置">  
        </td>  
      </tr>  
    </table>  
    </form>  
    </center>  
  </body>  
</html>  