package controller;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class SURAlterServlet extends HttpServlet {
    private DBBean dbbean;

    public SURAlterServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String SUR_id = request.getParameter("SUR_id");
        String SUR_site = request.getParameter("SUR_site");

        String sql = "update surgery SET SUR_site='" + SUR_site + "' where SUR_id='" + SUR_id + "'";
        dbbean.update(sql);
    }
}
