package controller.patient;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.DBBean;

public class PatientRegisterServlet extends HttpServlet {
    private DBBean dbbean;

    public PatientRegisterServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String P_id = request.getParameter("P_id");
        String P_name = request.getParameter("P_name");
        String P_psd = request.getParameter("P_psd");
        String P_age = request.getParameter("P_age");
        String P_sex = request.getParameter("P_sex");


        boolean rs = dbbean.patientRegister(P_id, P_name, P_psd, P_age, P_sex);
        if (rs) {
            System.out.println("注册成功");
            String message = "注册成功，请登录吧！";
            request.setAttribute("message", message);
            request.getRequestDispatcher("/patient/PatientRegister.jsp").forward(request, response);

        } else {
            System.out.println("注册失败!");
        }

    }
}


