<%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/16
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者信息修改</title>
    <style>
        fieldset {
            width: 500px;
            margin: 0 auto;
        }

        body {
            text-align: center;
        }
    </style>
</head>
<body>
<%
    String P_id = request.getParameter("P_id");
    String P_psd = request.getParameter("P_psd");
    String P_name = request.getParameter("P_name");
    String P_sex = request.getParameter("P_sex");
    String P_age = request.getParameter("P_age");
%>

<form action="http://localhost:8080/hospital/patientAlterServlet" method="post">
    <fieldset>
        <legend>修改信息</legend>
        <table align="center">
            <tr>
                <td>患者id</td>
                <td><input type="text" value="<%=P_id%>" readonly="readonly" name="P_id"></td>
            </tr>
            <tr>
                <td>患者密码</td>
                <td><input type="text" value="<%=P_psd%>" name="P_psd"></td>
            </tr>
            <tr>
                <td>患者姓名</td>
                <td><input type="text" value="<%=P_name%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>患者性别</td>
                <td><input type="text" value="<%=P_sex%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>患者年龄</td>
                <td><input type="text" value="<%=P_age%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="修改"></td>
            </tr>
        </table>
    </fieldset>
</form>

<form action="http://localhost:8080/hospital/patientDeleteServlet">
    <fieldset>
        <legend>修改信息</legend>
        <table align="center">
            <tr>
                <td>患者id</td>
                <td><input type="text" value="<%=P_id%>" readonly="readonly" name="P_id"></td>
            </tr>
            <tr>
                <td>患者密码</td>
                <td><input type="text" value="<%=P_psd%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>患者姓名</td>
                <td><input type="text" value="<%=P_name%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>患者性别</td>
                <td><input type="text" value="<%=P_sex%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>患者年龄</td>
                <td><input type="text" value="<%=P_age%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="删除"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
