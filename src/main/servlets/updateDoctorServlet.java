package servlets;


import dao.impl.doctorDAOImpl;
import dao.pojo.doctor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class updateDoctorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String D_id = request.getParameter("D_id");
        String D_psd = request.getParameter("D_psd");
        String D_name = request.getParameter("D_name");
        int D_age = Integer.parseInt(request.getParameter("D_age"));
        String D_sex = request.getParameter("D_sex");
        String SUR_id = request.getParameter("SUR_id");

        doctor doctor = new doctor(D_id,D_psd,D_name,D_age,D_sex,SUR_id);

        doctorDAOImpl doctorDAO = new doctorDAOImpl();
        doctorDAO.updateDoctor(doctor);

        response.sendRedirect("master/doctorManage.jsp");

    }
}
