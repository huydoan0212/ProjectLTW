package controller;

import model.Product;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PageAdminEditProductController", value = "/page-admin-edit-product")
public class PageAdminEditProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object object = req.getParameter("product_id");
        int product_id = 0;
        if (object != null) {
            if (object instanceof Integer) {
                product_id = (Integer) object;
            } else if (object instanceof String) {
                product_id = Integer.valueOf((String) object);
            }
        }
        Product product = ProductService.getInstance().getById(product_id);
        System.out.println(product_id);
        System.out.println(product);
        if(product!=null){
            req.getSession().setAttribute("product", product);
            resp.sendRedirect("pageAdmin_editProduct.jsp");
        }
    }
}
