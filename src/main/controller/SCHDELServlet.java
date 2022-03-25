package controller;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SCHDELServlet extends HttpServlet {
    private DBBean dbbean;

    public SCHDELServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String SCH_time = request.getParameter("SCH_time");
        String SCH_date = request.getParameter("SCH_date");
        dbbean.update("delete from SCH where SCH_time='" + SCH_time + "' and SCH_date='" + SCH_date + "'");
        System.out.println("删除成功");
        request.getRequestDispatcher("../index.jsp").forward(request,response);
    }
}
