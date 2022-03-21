<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" import="java.sql.ResultSet" import="bean.DBBean" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>医生排班管理</title>
</head>
<body>

<%
    String sql = "select D_name, SCH.SUR_id, SCH_date, SCH_time, SCH_size, SCH_booked from Doctor, SCH where SCH.D_id=Doctor.D_id";
    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<div align="center">
    <table>
        <tr>
            <td>医生姓名</td>
            <td>所属科室</td>
            <td>排班日期</td>
            <td>排班时间</td>
            <td>预约上限</td>
            <td>预约人数</td>
        </tr>
        <%
            while (rs.next()) {
        %>

        <%="<tr>"%>
        <%="<form action=\"master_schAlter.jsp\" method=\"post\">" %>
        <%="<td><input type=" + "text" + " value=" + rs.getString(1) + " name=\"D_name\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(2) + " name=\"SUR_id\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(3) + " name=\"SCH_date\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(4) + " name=\"SCH_time\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(5) + " name=\"SCH_size\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "text" + " value=" + rs.getString(6) + " name=\"SCH_booked\" readonly=\"readonly\"></td>"%>
        <%="<td><input type=" + "submit" + " value=" + "编辑" + "></td>" %>
        <%="</form>" %>
        <%="</tr>"%>
        <%} %>

    </table>

</div>
</body>
</html>