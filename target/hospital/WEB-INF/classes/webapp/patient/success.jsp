<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页面</title>
</head>
<body>
<%
	String P_id = (String)request.getAttribute("P_id");
	session.setAttribute("P_id", P_id);
%>
<h2>登录成功</h2>
<a href="http://localhost:8080/hospital/patient/PatientQuery.jsp"><button>查询个人信息</button></a>
<a href="http://localhost:8080/hospital/surgery/Surgery.jsp"><button>查询科室信息</button></a><br><br>
<a href="http://localhost:8080/hospital/patient/PatientLogin.jsp"><button>切换账号</button></a>
</body>
</html>