<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="bean.DBBean" %>
    <%@ page import="java.sql.ResultSet" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>科室信息管理</title>
</head>

<body>

<% String sql = "select SUR_id,O_id,SUR_site from Surgery";
    DBBean dbbean = new DBBean();
    ResultSet
            rs = dbbean.Query(sql); %>
<div align="center">
    <table>
        <tr>
            <td>诊室id</td>
            <td>所属科室</td>
            <td>诊室地址</td>
        </tr>

        <%
            while (rs.next()) {
        %>
        <%="</tr>" %>
        <%="<form action=\"master_surgeryAlter.jsp\">" %>
        <%="<td><input type=" + "text" + " value=" + rs.getString(1) + " name=" + "SUR_id" + " readonly=\"readonly\"></td>" %>
        <%="<td><input type=" + "text" + " value=" + rs.getString(2) + " name=" + "O_id" + " readonly=\"readonly\"></td>" %>
        <%="<td><input type=" + "text" + " value=" + rs.getString(3) + " name=" + "SUR_site" + " readonly=\"readonly\"></td>" %>
        <%="<td><input type=" + "submit" + " value=" + "编辑" + "></td>" %>
        <%="</form>" %>


        <%="</tr>" %>

        <%} %>

    </table>

</div>
</body>

</html>