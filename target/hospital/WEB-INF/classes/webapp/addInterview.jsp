
<%@ page import="dao.impl.interviewDAOImpl" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: K
  Date: 2022/3/19/019
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>挂号预约</title>
</head>
<body>
<%
    interviewDAOImpl interviewDAO = new interviewDAOImpl();
    String sql = null;
    ArrayList<ArrayList> arrayLists= null;
    String defaultP_idP_name;
    defaultP_idP_name = request.getParameter("P_id")+":"+request.getParameter("P_name");
%>
<div align="center">
    <h2>申请预约信息</h2>
    <form action="addInterviewServlet" method="post">
        <%
            sql = "select * from interview ";
            arrayLists = interviewDAO.selectInterview(sql);
            DecimalFormat decimalFormat = new DecimalFormat("000");
            int interviewId = arrayLists.size()+1;
            String s = decimalFormat.format(interviewId);
            String I_id = "I" +s ;
        %>
        <%--        预约信息Id：--%>
        <input type="text"  name="I_id" hidden="hidden" value=<%=I_id%>>
        <table>
            <tr>
                <td>
                    选择预约患者：
                </td>
                <td>
                    <input type="text" list="P_idList" name="P_id" value="<%=defaultP_idP_name%>">
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
                    <input type="text" list="D_idList" name="D_id">
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
                    <input type="date" name="I_date" >
                </td>
            </tr>
            <tr>
                <td>
                    预约时间段：
                </td>
                <td>
                    <input id="I_time" type="text" list="I_timeList" name="I_time">
                    <datalist id="I_timeList">
                        <option>上午</option>
                        <option>下午</option>
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="提交预约">
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
