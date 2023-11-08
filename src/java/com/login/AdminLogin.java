package com.login;

import com.db.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("adminuser");
        String Password = request.getParameter("adminpass");
        
        LoginDAO dao = new LoginDAO();
        if (dao.checkAdmin(Username, Password)) {
            HttpSession session = request.getSession();
            session.setAttribute("adminuserpass", Username);
            response.sendRedirect("Welcome Admin.jsp");
        } else {
            response.sendRedirect("Admin Login.jsp");
        }
    }

}
