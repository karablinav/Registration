package com.unc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        User user = Users.findUser(login);
        boolean admin = user.isAdmin();
        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("user", user);
            if (admin == true) {
                response.sendRedirect("adminpage.jsp");
            } else {
                response.sendRedirect("userpage.jsp");
            }

        } else {
            response.sendRedirect("index.jsp");
        }
    }
}
