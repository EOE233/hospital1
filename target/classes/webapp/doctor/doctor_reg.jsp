<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2022/3/15
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生注册</title>
</head>
<body>
<div align="center">
    <h1>医生注册</h1>
    <table>
        <form action="http://localhost:8080/hospital/doctorReg" method="post">
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
                    out.println(message);
                }
            %><br><br>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="radio" name="sex" value="男">男</input>
                    <input type="radio" name="sex" value="女">女</input>
                </td>
            </tr>
            <tr>
                <td>所属诊室id:</td>
                <td><input type="text" name="sur_id"></td>
            </tr>

            <tr>
                <td><input type="submit" value="提交"></td>
                <td><input type="reset" value="取消"></td>
            </tr>
        </form>
    </table>
    <br>
    <a href="http://localhost:8080/hospital/index.jsp"><button>返回主页</button></a>

</div>
</body>
</html>
