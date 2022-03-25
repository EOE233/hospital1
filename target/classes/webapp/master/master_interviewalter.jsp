<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>在此处插入标题</title>
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
<% String I_id = request.getParameter("I_id");
    String P_name = request.getParameter("P_name");
    String
            D_name = request.getParameter("D_name");
    String I_date = request.getParameter("I_date");
    String
            I_time = request.getParameter("I_time"); %>

<form action="http://localhost:8080/hospital/master/InterviewAlterServlet" method="post">
    <fieldset>
        <legend>修改信息</legend>
        <table align="center">
            <tr>
                <td>
                    预约信息id
                </td>
                <td>
                    <input type="text" value="<%=I_id %>" name="I_id" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    患者姓名
                </td>
                <td>
                    <input type="text" value="<%=P_name %>" name="P_name" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    医生姓名
                </td>
                <td>
                    <input type="text" value="<%=D_name %>" name="D_name" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    预约日期
                </td>
                <td>
                    <input type="text" value="<%=I_date %>" name="I_date">
                </td>
            </tr>
            <tr>
                <td>
                    预约时间
                </td>
                <td>
                    <input type="text" value="<%=I_time %>" name="I_time">
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <input type="submit" name="submit" value="修改">
                </td>
            </tr>
        </table>


    </fieldset>
</form>

<form action="http://localhost:8080/hospital/master/InterviewDelServlet" method="post">
    <fieldset>
        <legend>删除信息</legend>
        <table align="center">
            <tr>
                <td>
                    预约信息id
                </td>
                <td>
                    <input type="text" value="<%=I_id %>" name="I_id" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    患者姓名
                </td>
                <td>
                    <input type="text" value="<%=P_name %>" name="P_name" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    医生姓名
                </td>
                <td>
                    <input type="text" value="<%=D_name %>" name="D_name" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    预约日期
                </td>
                <td>
                    <input type="text" value="<%=I_date %>" name="I_date" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    预约时间
                </td>
                <td>
                    <input type="text" value="<%=I_time %>" name="I_time" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <input type="submit" name="submit" value="删除">
                </td>
            </tr>
        </table>


    </fieldset>
</form>
<a href="master_interviewinfo.jsp">返回</a>

</body>

</html>