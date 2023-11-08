package com.register;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.DriverManager; 
import java.sql.PreparedStatement; 
//import java.sql.ResultSet;
//import java.sql.SQLException;
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
//import javax.servlet.http.HttpSession;
//import javax.sql.DataSource;

public class AddContactPerson extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("C_name");
        String email = request.getParameter("C_email");
        String contact = request.getParameter("C_contact");
        String address = request.getParameter("C_add");
        String message = request.getParameter("C_mess");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs?zeroDateTimeBehavior=convertToNull", "root", "root");

            String sql = "insert into contactus values (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, contact);
            ps.setString(4, address);
            ps.setString(5, message);
            ps.executeUpdate();
            ps.close();
        } catch (Exception E) {
            System.out.println("The error is an error");
        }
    }
}
//
//import classes.utils.DataSourceUtil;
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import javax.sql.DataSource;
//
//public class AddContactPerson {
//    
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String id = request.getParameter("username");
//        String password = request.getParameter("password");
//        HttpSession session = request.getSession();
//        DataSource ds = (DataSource) DataSourceUtil.getDataSource();
//
//        Connection conn = null;
//        PreparedStatement stmt = null;
//        ResultSet rs = null;
//        try {
//            conn = ds.getConnection();
//            stmt = conn.prepareStatement("SELECT ADMINID, PASSWORD FROM ADMIN WHERE ADMINID = ?");
//            stmt.setString(1, id);
//            rs = stmt.executeQuery();
//            while (rs.next()) {
//                if (rs.getString("ADMINID").equals(id)) {
//                    session.setAttribute("admin", id);
//                    if (rs.getString("PASSWORD").equals(password)) {
//                        response.sendRedirect("adminHome.jsp");
//                    } else {
//                        response.sendRedirect("adminLogin.jsp");
//                    }
//                }
//            }
//        } catch (SQLException e) {
//        } finally {
//            try {
//                if (rs != null && !rs.isClosed()) {
//                    rs.close();
//                }
//            } catch (SQLException e) {
//            }
//            try {
//                if (stmt != null && !stmt.isClosed()) {
//                    stmt.close();
//                }
//            } catch (SQLException e) {
//            }
//            try {
//                if (conn != null && !conn.isClosed()) {
//                    conn.close();
//                }
//            } catch (SQLException e) {
//            }
//        }
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Loginad the Checks the memberid"
//                + " and password if true forward to user/ directory else to login handler";
//    }
//
//    
//}