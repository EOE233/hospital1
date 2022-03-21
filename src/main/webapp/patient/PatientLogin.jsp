<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>患者登录页面</title>
<script language ="JavaScript">
function loginSubmit(){
   if(form1.P_id.value ==null || form1.P_id.value==""){
      alert("请填写用户名!");
      return false;
   }
   if(form1.P_psd.value ==null || form1.P_psd.value==""){
      alert("请填写密码!");
      return false;
   }
      return true;
}
</script>
</head>
<body>
<div align="center">
<h2>用户登录（患者）</h2>
<form action="http://localhost:8080/hospital/patient/PatientLoginServlet" method="post" name="form1">
<%
	String message = (String)request.getAttribute("message");
	if(message!=null){
		out.println(message);
	}
 %><br><br>
<table width="330">
	<tr>
		<td width="100px">用户id：</td>
		<td><input type="text"  name="P_id"/></td>
	</tr>
	<tr>
		<td width="100px">密&nbsp;&nbsp;码：</td>
		<td><input type="password"  name="P_psd"/></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" value="登录" name="submit" onclick="return loginSubmit();">
		<input type="reset" name="Reset" value="重置"></td>
 	</tr>
</table>
</form>
<a href="http://localhost:8080/hospital/patient/PatientRegister.jsp"><button>去注册吧~</button></a>
    <br>
    <a href="http://localhost:8080/hospital/index.jsp"><button>返回主页</button></a>
</div>


</body>
</html>