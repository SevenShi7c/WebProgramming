package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.BookingDAO;
import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.BookingModel;
import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BookingOnlineController", value = "/bookingOnline")
public class BookingOnlineController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/web/bookingOnline.jsp").forward(request, response);
        HttpSession session = request.getSession();
        session.setAttribute("mess", null);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");

        System.out.println("bookingOnline dopost: " + action);
        HttpSession session = request.getSession();
        session.setAttribute("mess", null);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("mess", null);
        } else if (action.equals("booking")) {
//            System.out.println("update thanhcong " );
            String name = request.getParameter("username");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String time = request.getParameter("time");
            String date = request.getParameter("date");
            String description = request.getParameter("description");
            String payment = request.getParameter("payment");

            User user = (User) session.getAttribute("userlogin");
            if(user==null) {
                BookingDAO book = new BookingDAO();
                book.addCustomer(name, tel, email, address);
                book.addBooking(date, time, book.selectIdNew(), payment, description);
                session.setAttribute("mess", "success");
                response.sendRedirect("bookingOnline");
            }
            else{
                BookingDAO book = new BookingDAO();
                book.addCustomer(name, tel, email, address);
                book.addBooking(date, time, user.getId(), payment, description);
                session.setAttribute("mess", "success");
                response.sendRedirect("bookingOnline");
            }

        }
    }
}
