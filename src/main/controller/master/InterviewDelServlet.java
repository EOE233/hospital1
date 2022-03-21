package controller.master;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class InterviewDelServlet extends HttpServlet {
    private DBBean dbbean;

    public InterviewDelServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        String I_id = request.getParameter("I_id");
        dbbean.update("delete from Interview where I_id='" + I_id + "'");
        System.out.println("删除成功");
    }
}
