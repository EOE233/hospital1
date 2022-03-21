package servlets;


import dao.impl.adminDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class adminLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        String M_id = request.getParameter("M_id");
        String M_pwd=request.getParameter("M_pwd");

        adminDAOImpl adminDAO = new adminDAOImpl();

        if(adminDAO.adminLogin(M_id,M_pwd)){
            request.getRequestDispatcher("/master/doctorManage.jsp").forward(request, response);
        }else {
            request.setAttribute("message", "登录失败,账号或密码错误");
            request.getRequestDispatcher("master/adminLogin.jsp").forward(request, response);
        }

    }
    
}