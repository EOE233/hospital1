<%-- Created by IntelliJ IDEA. User: Yanea Date: 2022/3/19 Time: 15:11 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Title</title>
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
<% String SUR_id = request.getParameter("SUR_id");
    String O_id = request.getParameter("O_id");
    String SUR_site = request.getParameter("SUR_site"); %>

<form action="http://localhost:8080/hospital/master/SURAlterServlet" method="post">
    <fieldset>
        <legend>修改信息</legend>
        <table align="center">
            <tr>
                <td>诊室id</td>
                <td><input type="text" name="SUR_id" value="<%=SUR_id%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>所属科室</td>
                <td><input type="text" name="O_id" value="<%=O_id%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>诊室地址</td>
                <td><input type="text" name="SUR_site" value="<%=SUR_site%>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="修改"></td>
            </tr>

        </table>


    </fieldset>
</form>

<form action="http://localhost:8080/hospital/master/SURDELServlet" method="post">
    <fieldset>
        <legend>删除信息</legend>
        <table align="center">
            <tr>
                <td>诊室id</td>
                <td><input type="text" name="SUR_id" value="<%=SUR_id%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>所属科室</td>
                <td><input type="text" name="O_id" value="<%=O_id%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>诊室地址</td>
                <td><input type="text" name="SUR_site" value="<%=SUR_site%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="删除"></td>
            </tr>
        </table>
    </fieldset>
</form>
<a href="matser_surgery.jsp">返回</a>

</div>
</body>

</html>