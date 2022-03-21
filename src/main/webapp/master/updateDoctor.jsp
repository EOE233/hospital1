
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.impl.doctorDAOImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改医生信息页面</title>
</head>
<body>
<form action="updateDoctorServlet" method="post">、
    <%
        String sql = "select * from doctor where D_id = ?";
        String D_id = request.getParameter("D_id");
        doctorDAOImpl doctorDAO = new doctorDAOImpl();
        ArrayList<ArrayList> arrayLists = doctorDAO.selectDoctorPid(sql,D_id);
    %>
    <table border="1">
        <tr>
            <td>医生ID<input type="text" name="D_id" value="<%=arrayLists.get(0).get(0)%>"></td>
        </tr>
        <tr>
            <td>医生密码<input type="password" name="D_psd" value="<%=arrayLists.get(0).get(1)%>"></td>
        </tr>
        <tr>
            <td>医生姓名<input type="text" name="D_name" value="<%=arrayLists.get(0).get(2)%>"></td>
        </tr>
        <tr>
            <td>医生年龄<input type="text" name="D_age" value="<%=arrayLists.get(0).get(3)%>"></td>
        </tr>
        <tr>
            <td>医生性别<input type="text" name="D_sex" value="<%=arrayLists.get(0).get(4)%>"></td>
        </tr>
        <tr>
            <td>医生诊室<input type="text" name="SUR_id" value="<%=arrayLists.get(0).get(5)%>"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="修改"></td>
        </tr>
        <tr>
            <td align="center"><input type="reset" value="取消"></td>
        </tr>
        <tr>
            <td align="center"><a href="doctorManage.jsp"><input type="button" value="返回"/></a></td>
        </tr>
    </table>
</form>
</body>
</html>
