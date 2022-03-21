package servlets;


import dao.impl.doctorDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class delDoctorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String D_id = request.getParameter("D_id");

        doctorDAOImpl doctorDAO = new doctorDAOImpl();
        doctorDAO.delDoctor(D_id);

        response.sendRedirect("doctorManage.jsp");

    }
}
