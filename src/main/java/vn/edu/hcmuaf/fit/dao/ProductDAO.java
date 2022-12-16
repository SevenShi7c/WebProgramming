package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO {

    public static List<ProductModel> findAll() {
        LinkedList<ProductModel> list = new LinkedList<ProductModel>();

        String sql = "select * from products";
        Statement statement = DBConnect.getInstall().get();
        if (statement != null)
            try {
                ResultSet rs = statement.executeQuery(sql);
                while (rs.next()) {
                    while (rs.next()) {
                        list.add(new ProductModel(rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getLong(4),
                                rs.getInt(5),
                                rs.getInt(6),
                                rs.getInt(7),
                                rs.getInt(8),
                                rs.getString(9),
                                rs.getInt(10)));
                    }
                    return list;

                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        else {
            System.out.println("Không có kết nối");
        }
        return null;
    }

    public static List<ProductModel> newProduct() {
        LinkedList<ProductModel> list = new LinkedList<ProductModel>();

        String sql = "select * from products order by id desc limit 7";
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = null;
            try {
                rs = statement.executeQuery(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                while (rs.next()) {
                    list.add(new ProductModel(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getLong(4),
                            rs.getInt(5),
                            rs.getInt(6),
                            rs.getInt(7),
                            rs.getInt(8),
                            rs.getString(9),
                            rs.getInt(10)));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

            return list;
        } else {
            System.out.println("Không có kết nối");
        }
        return null;
    }

    public static ProductModel getDetailProduct(String idProduct) {

        String sql = "select * from products " +
                "where id=?";

        try {
            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ps.setString(1, idProduct);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return new ProductModel(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getInt(10)
                );
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public static List<CategoryModel> getListBrand() {
        LinkedList<CategoryModel> list = new LinkedList<>();

        String sql = "select id, name from brand";

        try {
            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CategoryModel(rs.getInt(1),
                                rs.getString(2)
                        )
                );
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static List<ProductModel> getlistProductForBrand(String brandPram) {
        LinkedList<ProductModel> list = new LinkedList<>();

        String sql = "select * from products " +
                "join brand on brand.id = products.id_brand " +
                "where brand.name=?";

        try {
            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ps.setString(1, brandPram);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ProductModel(rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getLong(4),
                                rs.getInt(5)
                        )
                );
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static List<ProductModel> getListProductBySearch(String searchPram) {
        LinkedList<ProductModel> list = new LinkedList<>();

        String sql = "SELECT * FROM products " +
                "WHERE name like ? " +
                "order by id desc ";
        try {

            PreparedStatement ps = DBConnect.getInstall().preStatement(sql);
            ps.setString(1, "%"+searchPram+"%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ProductModel(rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getLong(4),
                                rs.getInt(5)
                        )
                );
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        for (ProductModel p : ProductDAO.getListProductBySearch("samsung")){
            System.out.println(p.getName());
        }
    }
}
