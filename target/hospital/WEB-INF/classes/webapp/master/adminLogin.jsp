<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
</head>
<body>
<div align="center">
    <h2>管理员登录</h2>
    <%
        String message = (String)request.getAttribute("message");
        if(message!=null){
            out.println(message);
        }
    %>
    <table>
		<form method="POST" action="http://localhost:8080/hospital/adminLogin">
			<tr>
                <td>账号：</td>
                <td><input type="text" name="M_id"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="M_pwd"></td>
            </tr>
            <tr>
                <td><input type="submit" value="提交"></td>
                <td><input type="reset" value="取消"></td>
            </tr>
        </form>
    </table>

</div>
</body>
</html>