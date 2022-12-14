package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static  final long serialVersionUID =1L;

    public LoginController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");
        System.out.println( "doget: "+action);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");

        }

        else if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
//                response.sendRedirect("signin");
            System.out.println( "Vao logout ");
        }
        response.sendRedirect("signin");

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");
        System.out.println( "dopost: "+action);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");

        } else if (action.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (new UserDAO().checkLogin(username, password)) {
                HttpSession session = request.getSession();
                User user = UserDAO.mapUser.get(username);
                session.setAttribute("userlogin", user);

            }
        }
        response.sendRedirect("home");
    }
}