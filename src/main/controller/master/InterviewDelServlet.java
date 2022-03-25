package controller.master;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InterviewDelServlet extends HttpServlet {
    private DBBean dbbean;

    public InterviewDelServlet() {
        this.dbbean = new DBBean();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String I_id = request.getParameter("I_id");
        dbbean.update("delete from Interview where I_id='" + I_id + "'");
        System.out.println("删除成功");
        request.getRequestDispatcher("../index.jsp").forward(request,response);
    }
}
