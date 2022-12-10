package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class CategoryDAO extends AbstractDAO {

    private List<CategoryModel> getListCategory(LinkedList<CategoryModel> list, String sql) {
        conn = getConnection();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

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

    public List<CategoryModel> getListBrand() {
        LinkedList<CategoryModel> list = new LinkedList<>();

        String sql = "Select id, name from brand";

        return getListCategory(list, sql);
    }
}
