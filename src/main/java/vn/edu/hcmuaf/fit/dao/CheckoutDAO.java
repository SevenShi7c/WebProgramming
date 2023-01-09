package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.BookingModel;
import vn.edu.hcmuaf.fit.model.DetailBookingModal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckoutDAO implements ObjectDAO {

    public int addBooking(Object obj) {
        BookingModel booking = (BookingModel) obj;
        String sql = "INSERT INTO booking " +
                "VALUES (NULL, ?, ?, ?,?,?,?,?,?,?)";
        PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
        try {
            ps.setString(1, booking.getDate_booking());

            ps.setString(2,booking.getid_user());
            ps.setString(3, booking.getId_payment());
            ps.setString(4, booking.getDescription());
            ps.setString(5, "1");
            ps.setString(6, booking.getUsername());
            ps.setString(7, booking.getEmail());
            ps.setString(8, booking.getTel());
            ps.setString(9, booking.getAddress());

            ps.executeUpdate();
            ResultSet idInserted = ps.getGeneratedKeys();

            if (idInserted.next()){
                return idInserted.getInt(1);
            }
        } catch (
                Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
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

    public boolean addDetailBooking(int idInserted, DetailBookingModal detailBookingModal) {
        String sql = "INSERT INTO detail_bookings " +
                "VALUES (NULL, ?, ?, ?)";
        try {
            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ps.setInt(1, idInserted);
            ps.setInt(2, detailBookingModal.getId_product());
            ps.setInt(3, detailBookingModal.getQuantity());

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
//        java.util.Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dt);
//        java.sql.Date mySqlDate = new java.sql.Date(date.getTime());

        BookingModel booking = new BookingModel();
        booking.setDate_booking("2023-12-01 00:12:00");
        booking.setDescription("nè há");
        booking.setId_payment("1");
        booking.setid_user("1");
        booking.setStatus_booking(1);
        booking.setUsername("Test");
        booking.setEmail("test@gmail.com");
        booking.setTel("123467889");
        booking.setAddress("tphcm");
        int t = new CheckoutDAO().addBooking(booking);

        System.out.println(t);
        DetailBookingModal d = new DetailBookingModal();
        d.setId_booking(t);
        d.setId_product(1);
        d.setQuantity(123);
        System.out.println(new CheckoutDAO().addDetailBooking(t,d));
//

    }
}
