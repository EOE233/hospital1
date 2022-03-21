<%@ page import="bean.DBBean" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/19
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科室信息查询</title>
</head>
<body>
<%
    String sql = "select * from surgery";
    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<table border="2px">
    <tr>
        <td>科室id</td>
        <td>诊室id</td>
        <td>诊室地址</td>
    </tr>
    <%
        while (rs.next()) {
    %>
    <%="<tr>"%>
    <%="<td>" + rs.getString(1) + "</td>"%>
    <%="<td>" + rs.getString(2) + "</td>"%>
    <%="<td>" + rs.getString(3) + "</td>"%>
    <%="</tr>"%>
    <%}%>


</table>
<a href="http://localhost:8080/hospital/patient/success.jsp"><button>返回</button></a>
</body>
</html>