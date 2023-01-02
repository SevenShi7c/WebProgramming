package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.model.ProductModel;

import java.util.List;

public class ProductService {

    public List<CategoryModel> getListBrand() {
        return ProductDAO.getListBrand();
    }

    public List<ProductModel> getListProduct() {
        return ProductDAO.findAll();
    }


    public static List<ProductModel> getSellerProduct() {
        return ProductDAO.newProduct();
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

    public boolean addNewProduct(int id, String name, String avatar, int id_type_product, int id_status_device, int id_brand, int price, int sum_quantity, String describe, int id_store) {
        return ProductDAO.addNewProduct(id, name, avatar, id_type_product, id_status_device, id_brand, price, sum_quantity, describe, id_store);
    }

    public static void main(String[] args) {
        ProductService p = new ProductService();
        for (ProductModel pr : p.getSellerProduct()) {
            System.out.println(pr.getName());
        }
    }
}
