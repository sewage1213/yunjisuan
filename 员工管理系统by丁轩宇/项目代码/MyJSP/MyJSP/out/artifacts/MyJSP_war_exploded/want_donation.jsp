<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <title>My JSP 'Feilong_register.jsp' starting page</title>  
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
    <script>  
        function addCheck(){  
            var username=document.getElementById("userName").value;  
            var password=document.getElementById("userPassword").value;  
            var newword=document.getElementById("newword").value;  
            if(userName==""){  
                alert("用户名不能为空!");  
                document.getElementById("username").focus();    
                return false;  
                }  
            if(userPassword==""){  
                alert("密码不能为空!");  
                 document.getElementById("userPassword").focus();  
                 return false;  
                 }  
            if(userPassword != newword){  
                alert("两次输入密码不相同!");  
                 document.getElementById("newword").focus();  
                 return false;  
                 }  
        }  
        function validate(){  
            var flag = addCheck();  
            if(flag == false)  
                return false;  
            return true;  
        }  
    </script> 
    
    </head> 
  <body>  
    <center>  
    <font face="楷体" size="6" color="#000">调职记录界面</font>
    <form action = "want_donationCheck.jsp" method = "post" onsubmit = "return validate()">  
    <table width="300" height = "180" border="5" bordercolor="#A0A0A0">  
      <tr>  
        <th>调职员工姓名：</th>
        <td><input type="text" name="userName" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>  
      </tr>  
       <tr>  
        <th>调职员工编号：</th>
        <td><input type="text" name="userId" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>  
      </tr>  
       <tr>  
        <th>调职职称去向：</th>
        <td><input type="text" name="userProject" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>  
      </tr>  
       <tr>  
        <th>调职薪资调整：</th>
        <td><input type="text" name="userMoney" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>  
      </tr>  
       <tr>  
        <th>员工调职时间：</th>
        <td><input type="text" name="userTime" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>  
      </tr>  
      
      <tr>  
        <td colspan = "2" align = "center">  
          <input type="submit" value="提 交">      
          <input type="reset" value="重  置">  
        </td>  
      </tr>  
    </table>  
    </form>  
    </center>  
  </body>  
</html>  