<%--
  Created by IntelliJ IDEA.
  User: K
  Date: 2022/3/20/020
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者登录</title>
</head>
<body>
<div align="center">
    <form action="patientLoginServlet" method="post">
        <table>
            <tr>
                <td>
                    账号：
                </td>
                <td>
                    <input type="text" name="P_id">
                </td>
            </tr>
            <tr>
                <td>
                    密码：
                </td>
                <td>
                    <input type="password" name="P_psd">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="登录">
                </td>
                <td>
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>
