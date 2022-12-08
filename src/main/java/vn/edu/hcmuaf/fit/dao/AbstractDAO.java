package vn.edu.hcmuaf.fit.dao;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

public class AbstractDAO<T> {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public AbstractDAO() {
    }

    public Connection getConnection() {
        String url = "jdbc:mysql://localhost:3306/phone_care";
        String user = "root";
        String pass = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }
    }
}
