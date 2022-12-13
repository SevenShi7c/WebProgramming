package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.ConnectToDatabase;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class UserDAO implements ObjectDAO {
    public static Map<String, User> mapUser = loadData();

    public UserDAO() {
    }

    private static Map<String, User> loadData() {
        Map<String, User> mapTemp = new HashMap<>();
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select * from users");
            while (rs.next()) {
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String tel = rs.getString(5);
                int id_type_user = rs.getInt(7);
                String dob = rs.getString(8);
                int sex = rs.getInt(9);
                String address = rs.getString(10);
                User user = new User(name, email, password, tel, id_type_user, dob, sex, address);
                mapTemp.put(user.getName(), user);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    public boolean checkLogin(String email, String pass) {
        User user = mapUser.get(email);
        if (user != null) {
            if (user.getPassword().equals(pass)) {
                return true;
            } else {
                return false;
            }

        } else {
            return false;
        }
    }

    @Override
    public boolean add(Object obj) {
        return false;
    }

    @Override
    public boolean del(String id) {
        mapUser.remove(id);
        try {
            new ConnectToDatabase().executeSql("delete from users where name ='" + id + "'");
            return true;
        } catch (Exception e) {
            System.out.println("Error When delete custommer:" + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean edit(String id, Object obj) {
        User user = (User) obj;
        mapUser.replace(id, user);
        String sql = "update users set id=?;name=?,email=?,password=?,avatar=?,tel=?,id_type_user=?,dob=?,sex=?,address=?";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);

            ppstm.setString(2, user.getName());
            ppstm.setString(3, user.getEmail());
            ppstm.setString(4, user.getPassword());
            ppstm.setString(6, user.getTel());
            ppstm.setInt(7, user.getId_type_user());
            ppstm.setString(8, user.getDob());
            ppstm.setInt(9, user.getSex());
            ppstm.setString(10, user.getAddress());
            ppstm.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println("Error when edit custommer:" + e.getMessage());
        }
        return false;
    }

    public boolean changePass(String userName, String newPass) {
        User user = mapUser.get(userName);
        if (user != null) {
            user.setPassword(newPass);
            mapUser.replace(user.getName(), user);
            edit(user.getName(), user);
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        UserDAO user = new UserDAO();
        User x = mapUser.get("admin@admin");
        System.out.println(x);
        System.out.println(user.mapUser);
        System.out.println(user.checkLogin("admin", "123"));
    }
}
