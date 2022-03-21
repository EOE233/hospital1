<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>
    <%@ page import="java.sql.ResultSet"
             import="bean.DBBean" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>预约信息管理</title>
</head>
<body>

<%
    String sql = "select I_id,P_name,D_name,I_date,I_time from Patient,Doctor,Interview where Patient.P_id=Interview.P_id and Doctor.D_id=Interview.D_id";
    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<div align="center">
    <table>
        <tr>
            <td>预约信息id</td>
            <td>患者姓名</td>
            <td>医生姓名</td>
            <td>预约日期</td>
            <td>预约时间</td>
        </tr>
        <%
            while (rs.next()) {
        %>

        <%="<tr>"%>
        <%="<form action=\"master_interviewalter.jsp\" method=\"post\">" %>
        <%="<td><input type=" + "text" + " value=" + rs.getString(1) + " name=\"I_id\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(2) + " name=\"P_name\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(3) + " name=\"D_name\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(4) + " name=\"I_date\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(5) + " name=\"I_time\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "submit" + " value=" + "编辑" + "></td>" %>
        <%="</form>" %>
        <%="</tr>"%>
        <%} %>

    </table>

</div>
</body>
</html>