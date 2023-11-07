package com.login;

import com.db.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class VoterLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("voteruser");
        String Password = request.getParameter("voterpass");

        LoginDAO dao = new LoginDAO();
        if (dao.check(Username, Password)) {
            HttpSession session = request.getSession();
            session.setAttribute("voterusername", Username);
            response.sendRedirect("Welcome Voter.jsp");
        } else {
            response.sendRedirect("Homepage.jsp");
        }
    }

}
