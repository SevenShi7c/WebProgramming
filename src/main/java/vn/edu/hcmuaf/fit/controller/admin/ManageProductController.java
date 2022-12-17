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
        String urlTypeParam = request.getParameter("type");
        String view = "";
        ProductService productService = new ProductService();
        ProductModel productModel = new ProductModel();
        CategorySevice categorySevice = new CategorySevice();

        if (SystemConstant.LIST.equals(urlTypeParam)) {
            view = "/view/admin/manage-product.jsp";
        } else if (SystemConstant.ADD.equals(urlTypeParam)) {
            view = "/view/admin/change-product.jsp";
            request.setAttribute("categoryTypeProduct",categorySevice.getListTypeProduct());
        } else if (SystemConstant.EDIT.equals(urlTypeParam)) {
            if (productModel.getId() != null) {
                productService.getDetailProduct(productModel.getId());
            }
            view = "/view/admin/change-product.jsp";
        } else if (urlTypeParam == null) {
            view = "/view/admin/manage-product.jsp";
        }

        request.setAttribute("categoryBrand",categorySevice.getListBrand());
        request.setAttribute("productModel", productModel);
        request.getRequestDispatcher(view).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
