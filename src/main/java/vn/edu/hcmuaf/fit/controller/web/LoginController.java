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
import java.lang.System.*;
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println( "doget: "+action);
        if (action == null) {

            System.out.println("Khong thuc hien duoc gi het");

        }
        else if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
//                response.sendRedirect("signin");
            response.sendRedirect("signin");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println( "dopost: "+action);
        HttpSession session = request.getSession();
        session.setAttribute("mess", null);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("mess", null);
        }
        else if (action.equals("login")) {
            if (new UserDAO().checkLogin(username, password)==1) {
                User user = UserDAO.mapUser.get(username);
                session.setAttribute("userlogin", user);
                session.setAttribute("mess", null);
                response.sendRedirect("home");
            }
            else if (new UserDAO().checkLogin(username, password)==2 ) {

                session.setAttribute("mess", null);
                response.sendRedirect("index");
            }
           else {
                session.setAttribute("mess", "error");
                response.sendRedirect("signin");
            }
        }
        else{
            session.setAttribute("mess", null);
        }


    }
}