package vn.edu.hcmuaf.fit.dao;


import vn.edu.hcmuaf.fit.db.ConnectToDatabase;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.ImageModel;
import vn.edu.hcmuaf.fit.model.ProductModel;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ImageDAO {
    public ImageDAO() {
    }

    public static List<ImageModel> loadImageSlide() {
        LinkedList<ImageModel> list = new LinkedList<>();
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select * from images where type=1 ");
            while (rs.next()) {
                String id = rs.getString(1);
                String name_photo = rs.getString(2);
                String photo = rs.getString(3);
                int type = rs.getInt(4);

                ImageModel imageModel = new ImageModel(id, name_photo, photo, type);
                list.add(imageModel);

            }
            return list;
        } catch (Exception e) {
           System.out.println("LoadImage: "+e.getMessage());
        }
        return list;
    }
    public static List<ImageModel> loadImageFooter() {
        LinkedList<ImageModel> list = new LinkedList<>();
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select * from images where type=2 ");
            while (rs.next()) {
                String id = rs.getString(1);
                String name_photo = rs.getString(2);
                String photo = rs.getString(3);
                int type = rs.getInt(4);

                ImageModel imageModel = new ImageModel(id, name_photo, photo, type);
                list.add(imageModel);

            }
            return list;
        } catch (Exception e) {
            System.out.println("LoadImage: "+e.getMessage());
        }
        return list;
    }

}

