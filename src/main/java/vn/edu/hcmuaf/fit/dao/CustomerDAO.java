package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.CustomerModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class CustomerDAO {
//    public static List<CustomerModel> getCustomer() {
//        LinkedList<CustomerModel> list = new LinkedList<CustomerModel>();
//
//        String sql = "select * from customer";
//        Statement statement = DBConnect.getInstall().get();
//        if (statement != null)
//            try {
//                ResultSet rs = statement.executeQuery(sql);
//                while (rs.next()) {
//                    list.add(new CustomerModel(rs.getInt(1),
//                            rs.getString(2),
//                            rs.getString(3),
//                            rs.getString(4),
//                            rs.getString(5)));
//                }
//                return list;
//
//            } catch (Exception e) {
//                e.printStackTrace();
//                @@ -211,8 +236,8 @@ public static List<ProductModel> getListProductBySearch(String searchPram) {
//                }
//    Lấy ra khách hàng
public static List<CustomerModel> getCustomer() {
    LinkedList<CustomerModel> list = new LinkedList<CustomerModel>();

    String sql = "select * from customer";
    Statement statement = DBConnect.getInstall().get();
    if (statement != null) try {
        ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                list.add(new CustomerModel(rs.getInt(1), rs.getString(2), rs.getString(3),
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
}
