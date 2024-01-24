package controller;

import dao.UserDAO;
import service.MD5Hash;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePassForgot", value = "/ChangePassForgot")
public class ChangePassForgot extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newPassword = request.getParameter("newPassword");
        String re_newPassword = request.getParameter("re_newPassword");
        String username = (String) request.getSession().getAttribute("username");
        if (newPassword.equals(re_newPassword)) {
            boolean isChangePass = UserDAO.changePassword(username, newPassword);
            if (isChangePass) {
                request.getSession().setAttribute("message", "Đổi mật khẩu thành công!");
                response.sendRedirect("login.jsp");
                request.getSession().removeAttribute("username");
            }
        } else {
            request.getSession().setAttribute("message", "Mật khẩu nhập lại không trùng khớp");
            request.getRequestDispatcher("newPassword.jsp").forward(request,response);

        }
    }
}
