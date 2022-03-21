package controller;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class SCHDELServlet extends HttpServlet {
    private DBBean dbbean;

    public SCHDELServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        String SCH_time = request.getParameter("SCH_time");
        String SCH_date = request.getParameter("SCH_date");
        dbbean.update("delete from SCH where SCH_time='" + SCH_time + "' and SCH_date='" + SCH_date + "'");
        System.out.println("删除成功");
    }
}
