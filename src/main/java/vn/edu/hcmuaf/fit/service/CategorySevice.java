package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.model.CategoryModel;

import java.util.List;

public class CategorySevice {
    private CategoryDAO categoryDAO;

    public CategorySevice() {
        this.categoryDAO = new CategoryDAO();
    }

    public List<CategoryModel> getListBrand() {
        return categoryDAO.getListBrand();
    }
}
