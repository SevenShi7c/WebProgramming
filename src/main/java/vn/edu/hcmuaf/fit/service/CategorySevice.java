package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.model.CategoryModel;

import java.util.List;

public class CategorySevice {

    public CategorySevice() {
    }

    public static List<CategoryModel> getListBrand() {
        return CategoryDAO.getListCategory();
    }

    public static List<CategoryModel> getListTypeProduct() {
        return CategoryDAO.getListTypeProduct();
    }

    public static void main(String[] args) {
        System.out.println(new CategorySevice().getListBrand());
    }
}
