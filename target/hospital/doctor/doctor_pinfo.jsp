<%@ page import="bean.DBBean" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2022/3/15
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者队列查询</title>
</head>
<body>
<%
    String d_id = (String) session.getAttribute("name");

    String sql = "select P_name from Interview,Patient where Interview.P_id = Patient.P_id and D_id = '" + d_id + "'";

    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<div align="center">
    <table>
        <tr>
            <td>患者姓名</td>
        </tr>
        <%
            while(rs.next())
            {
        %>
        <%="<tr>"%>
        <%="<td>" + rs.getString(1) + "</td>"%>
        <%="</tr>"%>
        <%
            }
        %>
    </table>

    <a href="doctor_message.jsp">返回</a>
</div>

</body>
</html>
