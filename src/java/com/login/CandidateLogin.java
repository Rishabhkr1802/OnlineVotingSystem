package com.login;

import com.db.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CandidateLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("candid");
        String Password = request.getParameter("candpass");

        LoginDAO dao = new LoginDAO();
        if (dao.check(Username, Password)) {
            HttpSession session = request.getSession();
            session.setAttribute("candidateusername", Username);
            response.sendRedirect("Welcome Candidate.jsp");
        } else {
            response.sendRedirect("Homepage.jsp");
        }
    }

}
