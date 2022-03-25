package controller;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SURDELServlet extends HttpServlet {
    private DBBean dbbean;

    public SURDELServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String SUR_id = request.getParameter("SUR_id");
        dbbean.update("delete from surgery where SUR_id='" + SUR_id + "'");
        request.getRequestDispatcher("../index.jsp").forward(request,response);
    }
}
