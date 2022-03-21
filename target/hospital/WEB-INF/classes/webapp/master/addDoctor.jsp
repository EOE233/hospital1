<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加医生</title>
</head>
<body>
<form action="http://localhost:8080/hospital/addDoctorServlet" method="post">
    <table border="1">
        <tr>
            <td>医生ID<input type="text" name="D_id"></td>
        </tr>
        <tr>
            <td>医生密码<input type="password" name="D_psd"></td>
        </tr>
        <tr>
            <td>医生姓名<input type="text" name="D_name"></td>
        </tr>
        <tr>
            <td>医生年龄<input type="text" name="D_age"></td>
        </tr>
        <tr>
            <td>医生性别<input type="text" name="D_sex"></td>
        </tr>
        <tr>
            <td>医生诊室<input type="text" name="SUR_id"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="添加"></td>
        </tr>
        <tr>
            <td align="center"><input type="reset" value="取消"></td>
        </tr>
        <tr>
            <td align="center"><a href="master/doctorManage.jsp"><input type="button" value="返回"/></a></td>
        </tr>
    </table>
</form>
</body>
</html>
