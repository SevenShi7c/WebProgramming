package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/profile")
public class ProfileController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/web/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");

        System.out.println("Profile dopost: " + action);
        HttpSession session = request.getSession();
        session.setAttribute("mess", null);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("mess", null);
        } else if (action.equals("update")) {
            System.out.println("update thanhcong " );
            String id = request.getParameter("id");
            String hovaten = request.getParameter("name");
            int sex = Integer.parseInt(request.getParameter("sex"));
            String email = request.getParameter("email");
            String tel = request.getParameter("tel");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            System.out.println(id +" "+hovaten+" "+sex+" "+email+" "+tel+" "+dob+" "+address );
            UserDAO user = new UserDAO();
            user.editPro(id,hovaten, sex, email, tel, dob, address);
            System.out.println(id +" "+hovaten+" "+sex+" "+email+" "+tel+" "+dob+" "+address );
            request.getRequestDispatcher("/view/web/index.jsp").forward(request, response);

        }
    }
}
