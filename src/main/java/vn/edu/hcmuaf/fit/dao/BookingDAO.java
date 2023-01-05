package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.ConnectToDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookingDAO implements ObjectDAO {

    public void addCustomer(String name, String tel, String email, String address) {
        String sql = "insert into customer(username,address,email,tel,id_user) values (?,?,?,?,?)";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);
            ppstm.setString(1, name);
            ppstm.setString(2, address);
            ppstm.setString(3, email);
            ppstm.setString(4, tel);
            ppstm.setString(5, null);

            ppstm.executeUpdate();


        } catch (Exception e) {
            System.out.println("Error when addCustomer:" + e.getMessage());
        }
    }

        public void addBooking(String date_booking,String time_booking,String id_customer,String id_payment, String description) {
        String sql = "insert into booking(date_booking,id_customer,id_payment,description,status_booking) values (?,?,?,?,?)";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);
            ppstm.setString(1, date_booking+" "+time_booking);
            ppstm.setString(2, id_customer);
            ppstm.setString(3, id_payment);
            ppstm.setString(4, description);
            ppstm.setInt(5, 0);
//            ppstm.setString(6, null);
            ppstm.executeUpdate();
            System.out.println("success");


        } catch (Exception e) {
            System.out.println("Error when addBooking:" + e.getMessage());
        }
    }
    public String selectIdNew() {
        String a ="";
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select  id from customer order by id DESC LIMIT 1");
            while (rs.next()) {
                System.out.println("success" );
                a = rs.getString(1);
            }

        } catch (Exception e) {
            System.out.println("Error when selectIdNew:" + e.getMessage());
        }
        return a;
    }
    @Override
    public boolean add(Object obj) {
        return false;
    }

    @Override
    public boolean del(String id) {
        return false;
    }

    @Override
    public boolean edit(String id, Object obj) {
        return false;
    }

    @Override
    public void read() {

    }

    public static void main(String[] args) {
        BookingDAO b = new BookingDAO();
        b.addCustomer("Phuoc", "0123", "phuoc@phuoc", "BinhPhuoc");
        b.addBooking("2022-11-04 ","9:20",b.selectIdNew(),"1","Không có");
//        b.selectIdNew();
//        System.out.println(b.selectIdNew());

    }
}
