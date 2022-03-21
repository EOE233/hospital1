package servlets;

import dao.impl.interviewDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class delInterviewServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String I_id = request.getParameter("I_id");

        interviewDAOImpl interviewDAO = new interviewDAOImpl();

        interviewDAO.delInterview(I_id);

        response.sendRedirect("checkInterview.jsp");
    }
}
