package controller.patient;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author lzy
 * @create 2022-03-17 10:54
 */
public class PatientAlterServlet extends HttpServlet {
    private DBBean dbBean;

    public PatientAlterServlet() {
        this.dbBean = new DBBean();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String P_id = req.getParameter("P_id");
        String P_psd = req.getParameter("P_psd");
        String P_name = req.getParameter("P_name");
        String P_sex = req.getParameter("P_sex");
        String P_age = req.getParameter("P_age");

        String sql = "update patient SET P_psd='" + P_psd + "' where P_id='" + P_id + "'";
        dbBean.update(sql);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
