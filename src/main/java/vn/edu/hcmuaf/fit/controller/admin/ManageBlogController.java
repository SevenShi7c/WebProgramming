package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.constant.SystemConstant;
import vn.edu.hcmuaf.fit.dao.BlogDAO;
import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.model.BlogModel;
import vn.edu.hcmuaf.fit.model.CustomerModel;
import vn.edu.hcmuaf.fit.service.BlogService;
import vn.edu.hcmuaf.fit.service.BookingService;
import vn.edu.hcmuaf.fit.service.CustomerServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageBlogController", value = "/admin/manage-blog")
public class ManageBlogController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("action") != null ){
            if(request.getParameter("action").equals("delete") ){
                BlogDAO dao = new BlogDAO();
                dao.deleteBlog(Integer.parseInt(request.getParameter("id")));
            }else if(request.getParameter("action").equals("edit-blog")){
                String idBlog = request.getParameter("id-blog");
                BlogModel blog = BlogService.getDetailBlogForId(idBlog);
                request.setAttribute("blog", blog);
                request.getRequestDispatcher("/view/admin/edit-blog.jsp").forward(request,response);
            }
        }else{
            List<BlogModel> listBlog  = BlogService.getBlogAdmin();
            request.setAttribute("listBlog",listBlog);
            request.getRequestDispatcher("/view/admin/manage-blog.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeParam = request.getParameter("action");
        if (SystemConstant.EDIT.equals(typeParam)) {
            doPost_Edit(request, response);
        }
    }

    private void doPost_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id-blog");
        String title = request.getParameter("title");
        String brief = request.getParameter("brief");
        String detail = request.getParameter("detail");
        BlogService.updateBlog(id, title, brief, detail);
        response.sendRedirect(request.getContextPath() + "/admin/manage-blog?action=edit-blog&id-blog=" + id);
    }
}