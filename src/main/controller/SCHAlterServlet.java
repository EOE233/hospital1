package controller;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class SCHAlterServlet extends HttpServlet {

    private DBBean dbbean;

    public SCHAlterServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String D_name = req.getParameter("D_name");
        String SUR_id = req.getParameter("SUR_id");
        String SCH_date = req.getParameter("SCH_date");
        String SCH_time = req.getParameter("SCH_time");
        String SCH_size = req.getParameter("SCH_size");
        String SCH_booked = req.getParameter("SCH_booked");

        String sql = "update SCH SET  SCH_size='" + SCH_size + "' where SCH_date='" + SCH_date +"' and SCH_time='" + SCH_time +"'";
        dbbean.update(sql);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
