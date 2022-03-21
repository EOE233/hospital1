<%@ page import="javax.naming.Name" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2022/3/14
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生登录界面</title>
</head>
<body>


<div align="center">
    <h1>医生登录</h1>
    <table>
        <form action="http://localhost:8080/hospital/doctorLogin" method="post">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
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
