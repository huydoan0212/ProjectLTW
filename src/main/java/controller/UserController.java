package controller;

import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "UserController", value = "/userController")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("name").trim();
        String email = req.getParameter("email").trim();
        String userName = req.getParameter("username").trim();
        String phone = req.getParameter("phone").trim();
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repassword");
        if (fullName == null || fullName.equals("") || email == null || email.equals("") || userName == null || userName.equals("") ||
                phone == null || phone.equals("") || password == null || password.equals("") || rePassword == null || rePassword.equals("")) {
            req.setAttribute("error", "Bạn cần nhập các đủ thông tin ");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else if (UserService.isValidEmail(email) == false) {
            req.setAttribute("error", "Email không hợp lệ");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else if (UserService.isEmailExists(email) == true) {
            req.setAttribute("error", "Email đã được sử dụng");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else if (UserService.isUserExists(userName) == true) {
            req.setAttribute("error", "Tên đăng nhập đã được sử dụng");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else if (UserService.isMatchPassword(password, rePassword) == false) {
            req.setAttribute("error", "Mật khẩu bạn nhập không trùng nhau");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else {
//            req.setAttribute("success", "Đăng ký thành công");
            UserService.addUser(fullName, email, userName, password, rePassword, phone, 1);
            resp.sendRedirect("login.jsp");
        }
    }
}