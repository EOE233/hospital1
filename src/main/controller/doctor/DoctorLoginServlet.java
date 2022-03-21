package controller.doctor;

import bean.DBBean;
import com.mysql.cj.Session;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;

/**
 * @author lzy
 * @create 2022-03-14 20:28
 */
public class DoctorLoginServlet extends HttpServlet {
    private DBBean dbBean = new DBBean();



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取请求参数
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        //调用DBBean连接数据库并登录
        Connection connection = dbBean.JDBCon();
        boolean loginResult = dbBean.doctorLogin(name, password);
        //登录成功
        if (loginResult){
            System.out.println("登录成功");

            request.setAttribute("name", name);
            request.getRequestDispatcher("/doctor/doctor_message.jsp").forward(request, response);
        }else {
            //返回登录页面
            System.out.println("登录失败");
            request.getRequestDispatcher("/doctor/doctor_login.jsp").forward(request, response);
        }
    }
}
