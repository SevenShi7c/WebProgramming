package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.util.List;

public class ProductService {

    public List<CategoryModel> getListBrand() {
        return  ProductDAO.getListBrand();
    }

    public List<ProductModel> getListProduct() {
        return ProductDAO.findAll();
    }


    public static List<ProductModel> getSellerProduct() {
        return ProductDAO.newProduct();
    }

    public static List<ProductModel> deleteProduct() {
        return ProductDAO.deleteProduct();
    }

    public ProductModel getDetailProduct(String idProduct) {
        return ProductDAO.getDetailProduct(idProduct);
    }

    public List<ProductModel> getListProductForBrand(String brandPram) {
        return ProductDAO.getlistProductForBrand(brandPram);
    }

    public List<ProductModel> getListProductBySearch(String searchPram) {
        return ProductDAO.getListProductBySearch(searchPram);
    }

    public static void main(String[] args) {
        ProductService p = new ProductService();
        for (ProductModel pr : p.getSellerProduct()) {
            System.out.println(pr.getName());
        }
    }
}
