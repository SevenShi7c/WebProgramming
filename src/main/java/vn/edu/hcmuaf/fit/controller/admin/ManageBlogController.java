import vn.edu.hcmuaf.fit.dao.BlogDAO;
import vn.edu.hcmuaf.fit.dao.CustomerDAO;
import vn.edu.hcmuaf.fit.model.BlogModel;
import vn.edu.hcmuaf.fit.model.CustomerModel;
import vn.edu.hcmuaf.fit.service.BlogService;
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
            }
        }
        List<BlogModel> listBlog  = BlogService.getBlogAdmin();
        request.setAttribute("listBlog",listBlog);
        request.getRequestDispatcher("/view/admin/manage-blog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}