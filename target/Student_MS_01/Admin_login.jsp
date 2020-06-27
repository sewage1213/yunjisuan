<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
<h1>基于struts2+Hibernate的学生信息管理系统</h1>
<h3>管理员登录</h3>
<s:form action="login_adm" method="post">
    <s:textfield name="username" label="用户名" size="20"/>
    <s:password name="pwd" label="密码" size="20"/>
    <s:submit value="登录"/>
</s:form>
</body>
</html>

