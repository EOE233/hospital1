<%@ page import="bean.DBBean" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2022/3/14
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生基本信息</title>
</head>
<body>
<%
    String d_id = (String) request.getAttribute("name");
    if (d_id == null)
    {
        d_id = session.getAttribute("name").toString();
    }
    session.setAttribute("name", d_id);

    String sql = "select * from Doctor where D_id='" + d_id + "'";
    DBBean dbbean = new DBBean();
    ResultSet rs = dbbean.Query(sql);
%>
<div align="center">
    <table>
        <tr>
            <td>医生id</td>
            <td>医生密码</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
        </tr>
        <%
            while(rs.next())
            {
        %>
        <%="<tr>"%>
        <%="<td>" + rs.getString(1) + "</td>"%>
        <%="<td>" + rs.getString(2) + "</td>"%>
        <%="<td>" + rs.getString(3) + "</td>"%>
        <%="<td>" + rs.getString(4) + "</td>"%>
        <%="<td>" + rs.getString(5) + "</td>"%>
        <%="</tr>"%>
        <%
            }
        %>
    </table>

    <a href="http://localhost:8080/hospital/doctor/doctor_pinfo.jsp">患者队列查询</a>
    <br>
    <a href="http://localhost:8080/hospital/doctor/doctor_login.jsp">退出登录</a>
</div>
</body>
</html>
