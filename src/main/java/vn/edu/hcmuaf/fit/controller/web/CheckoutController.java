package vn.edu.hcmuaf.fit.controller.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/web/checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String address = request.getParameter("address");
        String time = request.getParameter("time");
        String date = request.getParameter("date");
        String description = request.getParameter("description");
        String payment = request.getParameter("payment");
        String store = request.getParameter("store");

        HttpSession session = request.getSession();
        session.getAttribute("PPMiniCart");

        System.out.println(session.getAttribute("PPMiniCart"));


        System.out.println(name + " " + email + " " + tel + " " + address + " " + time + " " + date + " " + description + " " + payment + " " + store);
        response.sendRedirect("cart");
    }
}
