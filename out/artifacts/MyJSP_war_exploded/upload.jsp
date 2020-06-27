<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
    <head>  
        <title>上传页面</title>  
    </head>    
    <body>  
    <center>
	<table border="0"  style="background-image:url(images/302045.jpg)" align="left" cellpadding="0" cellspacing="0">
	 <tr>
	    <td class="title"><div align="center">文件上传页面</div></td>
	 </tr>
	 <tr>
		<td width="1500" height="700">
            <div align="center" style="height: 700px">
                <form action="UploadServlet" method="post" enctype="multipart/form-data">

                    <input type="file" name="uploadfile" id="pic" align="top">
                    <input type="submit" value="上传" align="top" >

                </form>
            </div>
        </td>
        </tr>
        </table>
        </center>
    </body>  
</html>  