<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
当前登录：管理员:<s:property value="#session.adminUsername"/>



<form action="findAll_adm" method="post">
    <input type="submit" value="查询">
</form>
<table border="1px">
    <tr>
        <td width="100px">工号</td>
        <td width="100px">用户名</td>
        <td width="100px">密码</td>
        <td width="100px">角色权限</td>
        <td width="100px">角色</td>

    </tr>

    <s:iterator value="adminList" status="st">
        <tr>
            <td><s:property value="adid"/></td>
            <td><s:property value="username"/></td>
            <td><s:property value="pwd"/></td>
            <td><s:property value="roleid"/></td>
            <td><s:property value="rolename"/></td>

        </tr>
    </s:iterator>
</table>
<s:debug/>
</body>
</html>

