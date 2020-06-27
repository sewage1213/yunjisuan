<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/14
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>学生修改密码</title>
</head>
<script language="javascript">
    function checkForm(form){
        if(form.name.value==""){
            alert("请输入学生姓名!");form.name.focus();return false;
        }
        if(form.oldpwd1.value==""){
            alert("请输入的原密码!");form.oldpwd1.focus();return false;
        }
        if(form.oldpwd1.value!=form.holdpwd.value){
            alert("您输入的原密码不正确，请重新输入!");form.oldpwd1.value="";
            form.oldpwd1.focus();return false;
        }
        if(form.newpwd.value==""){
            alert("请输入的新密码!");form.newpwd.focus();return false;
        }
        if(form.newpwd1.value==""){
            alert("请确认新密码!");form.newpwd1.focus();return false;
        }
        if(form.newpwd.value!=form.newpwd1.value){
            alert("您两次输入的新密码不一致，请重新输入!");
            form.newpwd.value="";form.newpwd1.value="";
            form.newpwd.focus();return false;
        }
    }
</script>
<body>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
    <tr>
        <td valign="top" bgcolor="#FFFFFF"><table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">

                </table></td>
            </tr>
            <tr>
                <td align="center" valign="top">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="84%">&nbsp;      </td>
                        </tr>
                    </table>
                    <html:form action="/manage/student.do?action=studentModify" method="post" onsubmit="return checkForm(studentForm)">
                        <bean:define id="studentID" name="modifyQuery" property="ID" type="String"/>
                        <bean:define id="studentPwd" name="modifyQuery" property="pwd" type="String"/>
                        <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
                            <tr>
                                <td height="30" align="left" style="padding:5px;">考生姓名：</td>
                                <td align="left">
                                    <html:hidden property="ID" value="<%=studentID%>"/>
                                    <html:text property="name" size="20" name="modifyQuery" readonly="true"/> *</td>
                            </tr>
                            <tr>
                                <td align="left" style="padding:5px;">原&nbsp;密&nbsp;码：</td>
                                <td align="left"><html:password styleId="oldpwd1" property="oldpwd" size="30"/> *
                                    <html:hidden styleId="holdpwd" property="oldpwd" value="<%=studentPwd%>"/></td>
                            </tr>
                            <tr>
                                <td height="30" align="left" style="padding:5px;">新&nbsp;密&nbsp;码：</td>
                                <td align="left"><html:password styleId="newpwd" property="pwd" size="20"/>（密码由6到20位的数字或字母组成） *     </td>
                            </tr>
                            <tr align="center">
                                <td width="20%" height="30" align="left" style="padding:5px;">确认新密码：</td>
                                <td width="80%" align="left">
                                    <html:password styleId="newpwd1" property="pwd" size="20"/> *	  </td>
                            <tr>
                            <tr>
                                <td height="65" align="left" style="padding:5px;">&nbsp;</td>
                                <td><html:submit property="submit" styleClass="btn_grey" value="保存"/>
                                    &nbsp;
                                    <html:reset property="reset" styleClass="btn_grey" value="取消"/>
                                    &nbsp;
                                    <html:button property="button" styleClass="btn_grey" value="返回" onclick="window.location.href='../default.jsp'"/>
                                </td>
                            </tr>
                        </table>
                    </html:form>
                </td>
            </tr>
        </table>
        </td>
    </tr>
</table>
</body>
</html>
