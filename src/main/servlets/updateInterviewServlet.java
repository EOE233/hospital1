package servlets;

import dao.impl.interviewDAOImpl;
import dao.pojo.interview;
import util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class updateInterviewServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String I_id = request.getParameter("I_id");
        String P_idStr = request.getParameter("P_id");
        String P_id = StringUtil.StringT(P_idStr);
        String D_idStr = request.getParameter("D_id");
        String D_id = StringUtil.StringT(D_idStr);
        String I_dateStr = request.getParameter("I_date");
        java.sql.Date I_date = StringUtil.StringToDate(I_dateStr);
        String I_time = request.getParameter("I_time");

        interview interview = new interview(I_id,P_id,D_id,I_date,I_time);
//
        interviewDAOImpl interviewDAOimpl = new interviewDAOImpl();
        interviewDAOimpl.updateInterview(interview);

        response.sendRedirect("checkInterview.jsp");
    }
}
