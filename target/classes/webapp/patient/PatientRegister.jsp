<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册界面</title>
    <script language="JavaScript">
        function loginSubmit() {
            if (form1.P_id.value == null || form1.P_id.value == "") {
                alert("请填写用户id!");
                return false;
            }
            if (form1.P_name.value == null || form1.P_name.value == "") {
                alert("请填写姓名!");
                return false;
            }
            if (form1.P_psd.value == null || form1.P_psd.value == "") {
                alert("请填写密码");
                return false;
            }
            if (form1.P_age.value == null || form1.P_age.value == "") {
                alert("请填写年龄");
                return false;
            }
            if (form1.P_sex.value == null || form1.P_sex.value == "") {
                alert("请填写性别");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div align="center">
    <h2>系统注册（患者）</h2>
    <form method="post" action="http://localhost:8080/hospital/patient/PatientRegisterServlet" name="form1">
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
                out.println(message);
            }
        %><br><br>
        <table width="330">
            <tr>
                <td width="100px">用户id：</td>
                <td><input type="text" name="P_id"/></td>
            </tr>
            <tr>
                <td width="100px">姓&nbsp;&nbsp;名：</td>
                <td><input type="text" name="P_name"/></td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;码：</td>
                <td><input type="password" name="P_psd"/></td>
            </tr>
            <tr>
                <td>年&nbsp;&nbsp;龄：</td>
                <td><input type="text" name="P_age"/></td>
            </tr>
            <tr>
                <td>性&nbsp;&nbsp;别：</td>
                <td>男<input type="radio" name="P_sex" value="男"/>
                    女<input type="radio" name="P_sex" value="女"/></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit" value="注册" onclick="return loginSubmit();">
                    <input type="reset" name="Reset" value="重置"></td>
            </tr>
        </table>
    </form>
    <a href="http://localhost:8080/hospital/patient/PatientLogin.jsp">
        <button>去登录吧~</button>
    </a>
    <br>
    <a href="http://localhost:8080/hospital/index.jsp"><button>返回主页</button></a>
</div>
</body>
</html>