package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.util.List;

public class ProductService {

    private ProductDAO productDAO;

    public ProductService() {
        this.productDAO = new ProductDAO();
    }

    public List<ProductModel> getListProduct() {
        return productDAO.findAll();
    }

    public List<ProductModel> getNewProduct() {
        return productDAO.newProduct();
    }

    public static void main(String[] args) {
        ProductService p = new ProductService();
        for (ProductModel pr : p.getListProduct()) {
            System.out.println(pr.getName());
        }
    }
}
