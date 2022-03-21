package controller;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class SURDELServlet extends HttpServlet {
    private DBBean dbbean;

    public SURDELServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        String SUR_id = request.getParameter("SUR_id");
        dbbean.update("delete from surgery where SUR_id='" + SUR_id + "'");

    }
}
