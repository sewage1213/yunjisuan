<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员注册</title>
</head>
<body>
当前登录用户：<s:property value="#session.adminUsername"/>
<s:form action="insert_adm" method="post">
    <s:textfield label="工号" name="ad.adid"/></br>
    <s:textfield label="用户名" name="ad.username"/></br>
    <s:textfield label="密码" name="ad.pwd"/></br>
    <s:textfield label="角色编号" name="ad.roleid"/></br>
    <s:textfield label="角色" name="ad.rolename"/></br>
    <s:submit value="添加"/>
</s:form>
</body>
</html>
