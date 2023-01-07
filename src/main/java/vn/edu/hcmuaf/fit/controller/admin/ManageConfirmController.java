package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.constant.SystemConstant;
import vn.edu.hcmuaf.fit.model.BookingModel;
import vn.edu.hcmuaf.fit.service.BookingService;
import vn.edu.hcmuaf.fit.service.CategorySevice;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(name = "ManageConfirmController", value = "/admin/manage-confirm")
public class ManageConfirmController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = "";
        String type = request.getParameter("type");
        String idConfirm = request.getParameter("id-confirm");
        if(type.equals("edit-confirm")){
            BookingModel booking =  BookingService.getConfirm(idConfirm);
            request.setAttribute("bookingCurrent",booking );
            request.getRequestDispatcher("/view/admin/edit-confirm.jsp").forward(request,response);
        } if(type.equals("edit")){
            request.getRequestDispatcher("/view/admin/edit-confirm.jsp?type=edit&id="+idConfirm).forward(request,response);;
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeParam = request.getParameter("type");
        if (SystemConstant.EDIT.equals(typeParam)) {
            doPost_Edit(request, response);
        }
    }

    private void doPost_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id-confirm");
        String desc = request.getParameter("desc");
        String date = request.getParameter("date");
        BookingService.updateConfirm(id, date, desc);
        response.sendRedirect(request.getContextPath() + "/admin/manage-confirm?type=edit-confirm&id-confirm=" + id);
    }
}