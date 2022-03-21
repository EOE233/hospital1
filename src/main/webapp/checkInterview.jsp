
<%@ page import="dao.impl.interviewDAOImpl" %>
<%@ page import="dao.pojo.patient" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: K
  Date: 2022/3/20/020
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看预约信息</title>
</head>
<body>
<%
    patient patient = new patient();
    patient = (dao.pojo.patient) request.getSession().getAttribute("patient");

    interviewDAOImpl interviewDAO = new interviewDAOImpl();
    String sql = "select a.I_id,a.P_id,b.P_name,a.D_id,c.D_id,a.I_date,a.I_time from interview a,patient b,doctor c where a.P_id = ? and a.P_id = b.P_id and a.D_id = c.D_id";
    ArrayList<ArrayList> arrayLists = interviewDAO.selectInterviewI_id(sql,patient.getP_id());

%>

<div align="center">
    <table>
        <tr>
            <th>预约ID</th>
            <th>患者ID</th>
            <th>患者姓名</th>
            <th>医生ID</th>
            <th>医生姓名</th>
            <th>预约日期</th>
            <th>预约时间段</th>
            <th>操作</th>
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
                <a href="updateInterview.jsp?I_id=<%=arrayLists.get(i).get(0)%>">修改</a>
                <a href="delInterviewServlet?I_id=<%=arrayLists.get(i).get(0)%>">删除</a>
            </td>
        </tr>
        <%
           }
        %>

    </table>

    <a href="addInterview.jsp?P_id=<%=arrayLists.get(0).get(1)%>&P_name=<%=arrayLists.get(0).get(2)%>">添加预约</a>
    <br>
    <a href="interviewIndex.jsp">返回</a>
</div>
</body>
</html>
