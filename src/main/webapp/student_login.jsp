<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>学生登录</title>
</head>
<body>
<h1>基于struts2+Hibernate的学生信息管理系统</h1>
<h3>学生登录</h3>
<s:form action="login_stu" method="post">
    <s:textfield name="stu.sid" label="学号" size="20"/>
    <s:password name="stu.spwd" label="密码" size="20"/>
    <s:submit value="登录"/>
</s:form>
</body>
</html>
