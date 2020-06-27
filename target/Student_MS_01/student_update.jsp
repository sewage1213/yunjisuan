<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
当前登录：管理员<s:property value="#session.adminUsername"/>
<s:debug/>
<h3>修改学生信息</h3>
<form action="update_stu" method="post">
    <s:iterator value="#session.stuList.{?#this.sid == #parameters.sid[0]}" status="st">
        学号：<input type="text" name="stu.sid" value="<s:property value="sid"/> "><br>
        姓名：<input type="text" name="stu.name" value="<s:property value="name"/> "><br>
        性别：
        <input type="radio" name="stu.sex" value="男" checked="checked"/>男
        <input type="radio" name="stu.sex" value="女" />女<br>
        生日：<input type="text" name="stu.birthday" value="<s:property value="birthday"/> "><br>
        学校：<input type="text" name="stu.university" value="<s:property value="university"/> "><br>
        学院：<input type="text" name="stu.department" value="<s:property value="department"/> "><br>
        专业:<input type="text" name="stu.major" value="<s:property value="major"/> "><br>
        年级：<input type="text" name="stu.grade" value="<s:property value="grade"/> "><br>
        <input type="submit" value="修改学生信息"/>
    </s:iterator>
</form>
</body>
</html>
