package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.CategoryModel;
import vn.edu.hcmuaf.fit.service.CategorySevice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name="headerController")
public class HeaderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategorySevice categorySevice = new CategorySevice();
        List<CategoryModel> listCategoryBrand = categorySevice.getListBrand();

        request.setAttribute("categoryBrand", listCategoryBrand);
        request.getRequestDispatcher("/header.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
