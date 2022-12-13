package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.util.List;

public class ProductService {

    private ProductDAO productDAO;

    public ProductService() {
        this.productDAO = new ProductDAO();
    }

    public List<CategoryModel> getListBrand() {
        return  productDAO.getListBrand();
    }

    public List<ProductModel> getListProduct() {
        return productDAO.findAll();
    }

    public List<ProductModel> getNewProduct() {
        return productDAO.newProduct();
    }

    public List<ProductModel> getSellerProduct() {
        return productDAO.sellerProduct();
    }

    public ProductModel getDetailProduct(String idProduct) {
        return productDAO.getDetailProduct(idProduct);
    }

    public List<ProductModel> getlistProductForBrand(String brandPram) {
        return productDAO.getlistProductForBrand(brandPram);
    }

    public List<ProductModel> getListProductBySearch(String searchPram) {
        return productDAO.getListProductBySearch(searchPram);
    }

    public static void main(String[] args) {
//        ProductService p = new ProductService();
//        for (ProductModel pr : p.getListProduct()) {
//            System.out.println(pr.getName());
//        }
    }
}
