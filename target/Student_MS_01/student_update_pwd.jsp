<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生修改密码</title>
</head>
<body>
<s:debug/>
<h3>修改密码</h3>
<form action="update_spwd" method="post">
    <s:iterator value="#session.stuList.{?#this.sid == #parameters.sid[0]}" status="st">
        密码：<input type="text" name="stu.spwd" value="<s:property value="spwd"/> ">
        <input type="submit" value="修改学生密码"/>
    </s:iterator>
</form>
</body>
</html>
