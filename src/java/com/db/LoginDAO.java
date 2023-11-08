package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {

    public boolean checkAdmin(String user, String pass) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs?zeroDateTimeBehavior=convertToNull", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from admin where username = ? and password = ?");
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean checkCandidate(String email, String pass) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs?zeroDateTimeBehavior=convertToNull", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from candidate where Email = ? and password = ?");
            st.setString(1, email);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean checkVoter(String user, String pass) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs?zeroDateTimeBehavior=convertToNull", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from voter where Username = ? and Password = ?");
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
