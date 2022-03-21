<%@ page import="dao.impl.interviewDAOImpl" %>

<%@ page import="java.util.ArrayList" %>

<%--
  Created by IntelliJ IDEA.
  User: K
  Date: 2022/3/19/019
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改预约信息</title>
</head>
<body>
<%
    interviewDAOImpl interviewDAO = new interviewDAOImpl();
    String I_id = request.getParameter("I_id");
    String sql = null;
    ArrayList<ArrayList> arrayLists= null;
%>
<div align="center">
    <h2>修改预约信息</h2>
<form action="updateInterviewServlet" method="post">
    <%
        sql = "select a.I_id,a.P_id,b.P_name,a.D_id,c.D_id,a.I_date,a.I_time from interview a,patient b,doctor c where I_id = ? and a.P_id = b.P_id and a.D_id = c.D_id";
        ArrayList<ArrayList> defaultarrayLists = interviewDAO.selectInterviewI_id(sql, I_id);

    %>

    <%--        预约信息Id：--%>
    <input type="text"  name="I_id" hidden="hidden" value="<%=defaultarrayLists.get(0).get(0)%>">
    <table>
        <tr>
            <td>
                选择预约患者：
            </td>
            <td>
                <input type="text" list="P_idList" name="P_id" value="<%=defaultarrayLists.get(0).get(1)%>:<%=defaultarrayLists.get(0).get(2)%>">
                <datalist id="P_idList">
                    <%
                        sql = "select P_id,P_name from patient ";
                        arrayLists = interviewDAO.selectInterview(sql);
                        for (int i = 0; i < arrayLists.size(); i++) {
                            ArrayList a = arrayLists.get(i);
                            for (int j = 0; j < a.size(); j=j+2) {
                    %>
                    <option><%=a.get(j)%>:<%=a.get(j+1)%></option>
                    <%      }
                    }
                    %>
                </datalist>
            </td>
        </tr>
        <tr>
            <td>
                选择预约医生：
            </td>
            <td>
                <input type="text" list="D_idList" name="D_id" value="<%=defaultarrayLists.get(0).get(3)%>:<%=defaultarrayLists.get(0).get(4)%>">
                <datalist id="D_idList">
                    <%
                        sql = "select D_id,D_name from doctor ";
                        arrayLists = interviewDAO.selectInterview(sql);
                        for (int i = 0; i < arrayLists.size(); i++) {
                            ArrayList a = arrayLists.get(i);
                            for (int j = 0; j < a.size(); j=j+2) {
                    %>
                    <option><%=a.get(j)%>:<%=a.get(j+1)%></option>
                    <%      }
                    }
                    %>

                </datalist>
            </td>
        </tr>
        <tr>
            <td>
                选择预约日期：
            </td>
            <td>
                <input type="date" name="I_date" value="<%=defaultarrayLists.get(0).get(5)%>">
            </td>
        </tr>
        <tr>
            <td>
                预约时间段：
            </td>
            <td>
                <input id="I_time" type="text" list="I_timeList" name="I_time" value="<%=defaultarrayLists.get(0).get(6)%>">
                <datalist id="I_timeList">
                    <option>上午</option>
                    <option>下午</option>
                </datalist>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="修改预约">
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
