
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.impl.doctorDAOImpl" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医生信息管理</title>
</head>
<body>
    <%
        ArrayList<ArrayList> arrayLists = new doctorDAOImpl().selectDoctor();
    %>
    <table border="1">
        <tr>
            <th>医生ID</th>
            <th>医生密码</th>
            <th>医生姓名</th>
            <th>医生年龄</th>
            <th>医生性别</th>
            <th>医生诊室</th>
            <th colspan="2">操作</th>
        </tr>
        <%--        遍历数组内数据--%>
        <%
            for (int i = 0; i < arrayLists.size(); i++) {
                ArrayList line = arrayLists.get(i);
        %>
        <tr>
            <%       for (int j = 0; j < line.size(); j++) {
            %>
            <td><%=line.get(j)%></td>
            <%
                }
            %>
            <td>
                <a href="updateDoctor.jsp?D_id=<%=arrayLists.get(i).get(0)%>">修改</a>
                <a href="../delDoctorServlet?D_id=<%=arrayLists.get(i).get(0)%>">删除</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <a href="addDoctor.jsp">添加医生</a>  <a href="adminLogin.jsp">安全退出</a>
</body>
</html>