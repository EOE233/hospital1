package controller.master;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        request.getRequestDispatcher("../index.jsp").forward(request,response);

    }
}
