package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.ConnectToDatabase;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.BookingModel;
import vn.edu.hcmuaf.fit.model.CategoryModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class BookingDAO implements ObjectDAO {

    public static List<CategoryModel> getListStatus() {
        LinkedList<CategoryModel> list = new LinkedList<>();
        return null;
    }

    public static List<BookingModel> getListBooking(int status) {
        LinkedList<BookingModel> list = new LinkedList<>();

        String sql = "SELECT booking.id id,date_booking, id_customer ,username, id_payment, t.name nameTypePayment,description, status_booking,tel " +
                "FROM booking join customer on booking.id_customer = customer.id " +
                "join type_payments t on t.id = booking.id_payment " +
                "WHERE status_booking=?" + "order by id desc ";
        try {

            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ps.setString(1, status + "");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                BookingModel booking = new BookingModel();
                booking.setId(rs.getString("id"));
                booking.setDate_booking(rs.getString("date_booking"));
                booking.setId_customer(rs.getString("id_customer"));
                booking.setUsername(rs.getString("username"));
                booking.setId_payment(rs.getString("id_payment"));
                booking.setNameTypePayment(rs.getString("nameTypePayment"));
                booking.setStatus_booking(rs.getInt("status_booking"));
                booking.setDescription(rs.getString("description"));
                booking.setTel(rs.getString("tel"));

                list.add(booking);
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

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

    public void addBooking(String date_booking, String time_booking, String id_customer, String id_payment, String description) {
        String sql = "insert into booking(date_booking,id_customer,id_payment,description,status_booking) values (?,?,?,?,?)";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);
            ppstm.setString(1, date_booking + " " + time_booking);
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
        String a = "";
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select  id from customer order by id DESC LIMIT 1");
            while (rs.next()) {
                System.out.println("success");
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
//        BookingDAO b = new BookingDAO();
//        b.addCustomer("Phuoc", "0123", "phuoc@phuoc", "BinhPhuoc");
//        b.addBooking("2022-11-04 ","9:20",b.selectIdNew(),"1","Không có");

        for (BookingModel b :
                BookingDAO.getListBooking(1)) {
            System.out.println(b.getUsername());
        }

    }
}
