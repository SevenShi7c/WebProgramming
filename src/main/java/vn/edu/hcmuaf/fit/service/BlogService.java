package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.BlogDAO;
import vn.edu.hcmuaf.fit.model.BlogModel;

import java.util.List;

public class BlogService {

    public BlogDAO blogDAO;

    public BlogService() {
        this.blogDAO = new BlogDAO();
    }

    public List<BlogModel> getListBlog() {
        return blogDAO.findAll();
    }

    public List<BlogModel> getNewBlog() {
        return blogDAO.getNewBlog();
    }

    public BlogModel getDetailBlogForId(String idBlogPram) {
        return blogDAO.getDetailBlogForId(idBlogPram);
    }

    public static void main(String[] args) {

    }
}
