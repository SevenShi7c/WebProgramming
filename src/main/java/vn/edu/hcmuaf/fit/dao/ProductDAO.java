package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO extends AbstractDAO {

    public List<ProductModel> findAll() {
        LinkedList<ProductModel> list = new LinkedList<ProductModel>();

        String sql = "select * from products";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new ProductModel(rs.getInt(1),
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
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public static List<ProductModel> newProduct() {
        LinkedList<ProductModel> list = new LinkedList<ProductModel>();

        String sql = "select * from products order by id desc limit 7";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new ProductModel(rs.getInt(1),
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
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public ProductModel getDetailProduct(String idProduct) {

        String sql = "select * from products " +
                "where id=?";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ps.setString(1, idProduct);
                rs = ps.executeQuery();
                while (rs.next()) {
                    return new ProductModel(rs.getInt(1),
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
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }


    public List<CategoryModel> getListBrand() {
        LinkedList<CategoryModel> list = new LinkedList<>();

        String sql = "select id, name from brand";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new CategoryModel(rs.getInt(1),
                                    rs.getString(2)
                            )
                    );
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;

    }

    public List<ProductModel> getlistProductForBrand(String brandPram) {
        LinkedList<ProductModel> list = new LinkedList<>();

        String sql = "select * from products " +
                     "join brand on brand.id = products.id_brand "+
                     "where brand.name=?";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ps.setString(1,brandPram);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new ProductModel(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getLong(4),
                                    rs.getInt(5)
                            )
                    );
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }
    public List<ProductModel> getListProductBySearch(String searchPram) {
        LinkedList<ProductModel> list = new LinkedList<>();

        String sql = "SELECT * FROM products " +
                "WHERE name like ? " +
                "order by id desc ";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ps.setString(1,"%"+searchPram+"%");
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new ProductModel(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getLong(4),
                                    rs.getInt(5)
                            )
                    );
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public static void main(String[] args) {
//        ProductDAO pd = new ProductDAO();
//        for (ProductModel p : pd.getlistProductForBrand("asus")) {
//            System.out.println(p.getName());
//        }
    }
}
