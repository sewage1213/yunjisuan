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
当前登录：管理员:<s:property value="#session.adminUsername"/>

<form action="findByName_stu" method="post">
    根据姓名查询：<input type="text" name="stu.name">
    <input type="submit" value="查询">
    <a href="student_add.jsp"><input type="button" value="添加学生信息"></a>
</form>

<form action="findDept_stu" method="post">
    根据院系查询：
    <select name="stu.department">
        <option value=""><--请选择学院--></option>
        <option value="信电学院">信电学院</option>
        <option value="艺术学院">艺术学院</option>
        <option value="物理学院">物理学院</option>
        <option value="文学院">文学院</option>
        <option value="化学学院">化学学院</option>
    </select>
    <input type="submit" value="查询">

</form>
<table border="1px">
    <tr>
        <td width="100px">学号</td>
        <td width="100px">姓名</td>
        <td width="100px">性别</td>
        <td width="100px">生日</td>
        <td width="100px">大学</td>
        <td width="100px">院系</td>
        <td width="100px">专业</td>
        <td width="100px">年级</td>
        <td width="60px">修改</td>
        <td width="60px">删除</td>
    </tr>
    <s:iterator value="stuList" status="st">
        <tr>
            <td><s:property value="sid"/></td>
            <td><s:property value="name"/></td>
            <td><s:property value="sex"/></td>
            <td><s:property value="birthday"/></td>
            <td><s:property value="university"/></td>
            <td><s:property value="department"/></td>
            <td><s:property value="major"/></td>
            <td><s:property value="grade"/></td>
            <td><a href="student_update.jsp?sid=<s:property value="sid"/> ">修改</a> </td>
            <td><a href="delete_stu?stu.sid=<s:property value="sid"/> ">删除</a> </td>
        </tr>
    </s:iterator>

</table>

<s:debug/>
</body>
</html>
