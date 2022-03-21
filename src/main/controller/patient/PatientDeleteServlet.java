package controller.patient;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author lzy
 * @create 2022-03-17 10:59
 * 患者删除
 */
public class PatientDeleteServlet extends HttpServlet {
    private DBBean dbBean;


    public PatientDeleteServlet() {
        this.dbBean = new DBBean();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数
        String P_id = req.getParameter("P_id");

        String sql = "delete from patient where P_id='" + P_id + "'";
        dbBean.update(sql);
    }
}
