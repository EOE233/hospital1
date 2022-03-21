package controller.master;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class InterviewAlterServlet extends HttpServlet {
    private DBBean dbbean;

    public InterviewAlterServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String I_id = request.getParameter("I_id");
        String I_date = request.getParameter("I_date");
        String I_time = request.getParameter("I_time");
        String sql = "";

        sql = "update interview SET I_date='" + I_date + "', I_time='" + I_time + "' where I_id='" + I_id + "'";
        dbbean.update(sql);
        request.getRequestDispatcher("http://localhost:8080/hospital").forward(request,response);

    }
}
