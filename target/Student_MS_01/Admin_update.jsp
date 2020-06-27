<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
当前登录：管理员<s:property value="#session.adminUsername"/>
<s:debug/>
<h3>修改普通信息</h3>
<form action="update_adm" method="post">
    <s:iterator value="#session.adminList.{?#this.adid == #parameters.adid[0]}" status="st">
        工号：<input type="text" name="ad.adid" value="<s:property value="adid"/> "><br>
        用户名：<input type="text" name="ad.username" value="<s:property value="username"/> "><br>
        密码：<input type="text" name="ad.pwd" value="<s:property value="pwd"/> "><br>
        角色权限：
        <input type="radio" name="ad.roleid" value="1" checked="checked"/>1
        <input type="radio" name="ad.roleid" value="0" />0<br>

        角色：<input type="text" name="ad.rolename" value="<s:property value="rolename"/> "><br>

        <input type="submit" value="修改管理员信息"/>
    </s:iterator>
</form>
</body>
</html>
