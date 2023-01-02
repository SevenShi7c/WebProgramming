package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.constant.SystemConstant;
import vn.edu.hcmuaf.fit.model.ProductModel;
import vn.edu.hcmuaf.fit.service.CategorySevice;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ManageProductController", value = "/admin/manage-product")
public class ManageProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeParam = request.getParameter("type");
        String idProductParam = request.getParameter("id-product");
        String view = "";
        ProductService productService = new ProductService();
        ProductModel productModel = new ProductModel();
        CategorySevice categorySevice = new CategorySevice();

        if (SystemConstant.LIST.equals(typeParam)) {
            view = "/view/admin/manage-product.jsp";
        } else if (SystemConstant.ADD.equals(typeParam)) {
            view = "/view/admin/change-product.jsp";
        } else if (SystemConstant.EDIT.equals(typeParam)) {
            if (idProductParam != null) {
                request.setAttribute("product", productService.getDetailProduct(idProductParam));
            }
            view = "/view/admin/change-product.jsp";
        } else if (typeParam == null) {
            view = "/view/admin/manage-product.jsp";
            request.setAttribute("listProduct", productService.getListProduct());

        }
        request.setAttribute("categoryTypeProduct", categorySevice.getListTypeProduct());

        request.setAttribute("categoryBrand", categorySevice.getListBrand());

        request.getRequestDispatcher(view).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeParam = request.getParameter("type");
        if (SystemConstant.ADD.equals(typeParam)) {
            doPost_Add(request, response);
        }
    }

    protected void doPost_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid = Integer.parseInt(request.getParameter("idProduct"));
        String pName = request.getParameter("name_product");
        String pAvatar = request.getParameter("ImageUpload");
        int pidTypeProduct = Integer.parseInt(request.getParameter("categoryTypeProduct"));
        int pidStatus = Integer.parseInt(request.getParameter("statusProduct"));
        int pBrand = Integer.parseInt(request.getParameter("categoryBrand"));
        int pPrice = Integer.parseInt(request.getParameter("price"));
        int pQuantity = Integer.parseInt(request.getParameter("quantity"));
        String pDescription = request.getParameter("description");
        int pidStore = Integer.parseInt("1");

        boolean checkAddNew = new ProductService().addNewProduct(pid, pName, pAvatar, pidTypeProduct, pidStatus, pBrand, pPrice, pQuantity, pDescription, pidStore);
        request.setAttribute("messageAdd", checkAddNew);
        request.getRequestDispatcher("/view/admin/manage-product.jsp").forward(request, response);
    }
}
