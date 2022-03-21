package servlets;



import dao.impl.patientDAOImpl;
import dao.pojo.patient;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class patientLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String P_id = request.getParameter("P_id");
        String P_psd = request.getParameter("P_psd");

        patientDAOImpl patientDAO = new patientDAOImpl();

        ArrayList<ArrayList> arrayLists = patientDAO.patientLogin(P_id,P_psd);

        if (arrayLists != null && arrayLists.size()>0){
            HttpSession patientSession = request.getSession();
            patient patient = new patient();
            patient.setP_id((String) arrayLists.get(0).get(0)) ;
            patient.setP_psd((String) arrayLists.get(0).get(1)); ;
            patient.setP_name((String) arrayLists.get(0).get(2)); ;
            patient.setP_sex((String) arrayLists.get(0).get(3)); ;
            patient.setP_age(Integer.parseInt((String) arrayLists.get(0).get(4))); ;

            patientSession.setAttribute("patient",patient);
            response.sendRedirect("interviewIndex.jsp");
            System.out.println("登录成功");
        }

    }
}
