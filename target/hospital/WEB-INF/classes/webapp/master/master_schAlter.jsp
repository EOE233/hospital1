<%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/18
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生排班管理</title>
    <style>
        fieldset {
            margin: 0 auto;
            width: 500px;
        }

        body {
            text-align: center;
        }
    </style>
</head>
<body>
<%
    String D_name = request.getParameter("D_name");
    String SUR_id = request.getParameter("SUR_id");
    String SCH_date = request.getParameter("SCH_date");
    String SCH_time = request.getParameter("SCH_time");
    String SCH_size = request.getParameter("SCH_size");
    String SCH_booked = request.getParameter("SCH_booked");
%>


<form action="http://localhost:8080/hospital/master/SCHAlterServlet" method="post">
    <fieldset>
        <legend>修改信息</legend>
        <table align="center">
            <tr>
                <td>医生姓名</td>
                <td><input type="text" value="<%=D_name %>" name="D_name" readonly="readonly"></td>
            </tr>
            <tr>
                <td>所属诊室id</td>
                <td><input type="text" value="<%=SUR_id %>" name="SUR_id" readonly="readonly"></td>
            </tr>
            <tr>
                <td>排班日期</td>
                <td><input type="text" value="<%=SCH_date %>" name="DSCH_date" readonly="readonly"></td>
            </tr>
            <tr>
                <td>排班时间</td>
                <td><input type="text" value="<%=SCH_time %>" name="SCH_time" readonly="readonly"></td>
            </tr>
            <tr>
                <td>预约上限</td>
                <td><input type="text" value="<%=SCH_size %>" name="SCH_size"></td>
            </tr>
            <tr>
                <td>预约人数</td>
                <td><input type="text" value="<%=SCH_booked %>" name="SCH_booked" readonly="readonly"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="修改"></td>
            </tr>
        </table>
    </fieldset>
</form>

<form action="http://localhost:8080/hospital/master/SCHDELServlet" method="post">
    <fieldset>
        <legend>删除信息</legend>
        <table align="center">
            <tr>
                <td>医生姓名</td>
                <td><input type="text" value="<%=D_name %>" name="D_name" readonly="readonly"></td>
            </tr>
            <tr>
                <td>所属诊室id</td>
                <td><input type="text" value="<%=SUR_id %>" name="SUR_id" readonly="readonly"></td>
            </tr>
            <tr>
                <td>排班日期</td>
                <td><input type="text" value="<%=SCH_date %>" name="DSCH_date" readonly="readonly"></td>
            </tr>
            <tr>
                <td>排班时间</td>
                <td><input type="text" value="<%=SCH_time %>" name="SCH_time" readonly="readonly"></td>
            </tr>
            <tr>
                <td>预约上限</td>
                <td><input type="text" value="<%=SCH_size %>" name="SCH_size"></td>
            </tr>
            <tr>
                <td>预约人数</td>
                <td><input type="text" value="<%=SCH_booked %>" name="SCH_booked" readonly="readonly"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="删除"></td>
            </tr>
        </table>
    </fieldset>
</form>
<a href="master_schinfo.jsp">返回</a>


</body>
</html>
