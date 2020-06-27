<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>添加学生信息</title>
</head>
<body>
当前登录用户：<s:property value="#session.adminUsername"/>
<center>
    <s:form action="add_stu" method="post">
        <s:textfield label="学号" name="stu.sid"/><br>
        <s:textfield label="姓名" name="stu.name"/><br>
        <s:textfield label="密码" name="stu.spwd"/><br>
        <s:textfield label="性别" name="stu.sex"/><br>
        <s:textfield label="生日" name="stu.birthday"/><br>
        <s:textfield label="大学" name="stu.university"/><br>
        <s:textfield label="院系" name="stu.department"/><br>
        <s:textfield label="专业" name="stu.major"/><br>
        <s:textfield label="年级" name="stu.grade"/><br>
        <s:submit value="添加"/>
    </s:form>
</center>
</body>
</html>