
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <link rel="stylesheet" href="css/Login.css">
    <!-- font-awesome 图标字体 http://www.fontawesome.com.cn/faicons/#web-application -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen" rel="stylesheet" type="text/css">
    <style type="text/css">
        body{
            background-image: url("images/back.jpg");
        }

    </style>
    <title>学生信息管理系统SH</title>
</head>
<body>
<center><h1 style="color: red">欢迎进入学生选课管理系统</h1></center>
<div id="login-box">
    <h1>登录</h1>
<s:form action="adminLogin" method="POST">
    <s:textfield name="username" label="请输入用户名" size="16" style="width: 350px;font-size: 18px;border: 0;border-bottom: 2px solid#fff;padding: 5px 10px;background:#ffffff00;color: #fff;"/>
    <s:password name="password" label="请输入密码" size="16" style="width: 350px;font-size: 18px;border: 0;border-bottom: 2px solid#fff;padding: 5px 10px;background:#ffffff00;color: #fff;"/>
    <s:submit value="Login" />
</s:form>
</div>
</body>
</html>
