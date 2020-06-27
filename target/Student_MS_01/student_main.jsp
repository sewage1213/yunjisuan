<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>学生本人基本信息</title>
</head>
<body>
当前登录用户：<s:property value="#session.studentInfo"/>
<br>
<s:iterator value="stuList">
    学号：<s:property value="sid"/><br>
    姓名：<s:property value="name"/><br>
    生日：<s:property value="birthday"/><br>
    性别：<s:property value="sex"/><br>
    学校：<s:property value="university"/><br>
    院系：<s:property value="department"/><br>
    专业：<s:property value="major"/><br>
    年级：<s:property value="grade"/><br>
    <a href="student_update_pwd.jsp.jsp?sid=<s:property value="sid"/> ">修改</a>
</s:iterator>
</body>
</html>

