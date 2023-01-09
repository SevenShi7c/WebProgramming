package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.ConnectToDatabase;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.ContactModel;
import vn.edu.hcmuaf.fit.model.CustomerModel;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ContactDAO {
    public static List<ContactModel> getListContact() {
        LinkedList<ContactModel> list = new LinkedList<ContactModel>();

        String sql = "select * from contact";
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) try {
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                list.add(new ContactModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        else {
            System.out.println("Không có kết nối");
        }
        return null;
    }
    public static void deleteContact(int id) {
        String sql = "delete from contact where id = ? ";
        Connection connection = new ConnectToDatabase().getConnect();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}