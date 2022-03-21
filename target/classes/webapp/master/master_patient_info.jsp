<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean.DBBean" %>
<%@ page import="javax.print.attribute.ResolutionSyntax" %><%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/15
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者信息管理</title>
</head>
<body>
<%
    String sql = "select * from Patient";
    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<div align="center">
    <table>
        <tr>
            <td>患者id</td>
            <td>患者密码</td>
            <td>患者姓名</td>
            <td>患者性别</td>
            <td>患者年龄</td>
            <td>操作</td>
        </tr>
        <%
            while (rs.next()) {
        %>
        <%="<tr>"%>
        <form action="master_patientalter.jsp" method="POST">
            <%="<td><input type=" + "text" + " value=" + rs.getString(1) + " name=" + "P_id" + " readonly=\"readonly\"></td>" %>
            <%="<td><input type=" + "text" + " value=" + rs.getString(2) + " name=" + "P_psd" + " readonly=\"readonly\"></td>" %>
            <%="<td><input type=" + "text" + " value=" + rs.getString(3) + " name=" + "P_name" + " readonly=\"readonly\"></td>" %>
            <%="<td><input type=" + "text" + " value=" + rs.getString(4) + " name=" + "P_sex" + " readonly=\"readonly\"></td>" %>
            <%="<td><input type=" + "text" + " value=" + rs.getString(5) + " name=" + "P_age" + " readonly=\"readonly\"></td>" %>
            <%="<td><input type=" + "submit" + " value=" + "编辑" + "></td>" %>
        </form>
        <%="</tr>"%>
        <%
            }
        %>


    </table>
</div>

</body>
</html>
