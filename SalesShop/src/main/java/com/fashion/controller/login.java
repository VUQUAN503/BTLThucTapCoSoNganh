package com.fashion.controller;

import com.fashion.dao.ICustomerDAO;
import com.fashion.dao.impl.CartDAO;
import com.fashion.dao.impl.CustomerDAO;
import com.fashion.model.Customer;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;


@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {

    private ICustomerDAO dao = null;

    public login() {
        if(dao == null)
            dao = new CustomerDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF8");
        response.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF8");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("name");
        String password = request.getParameter("pass");
        String role = dao.checkLogin(username, password);
        if(role != null)
        {
            if(role.equals("USER")) {
                Customer customer = dao.findOne(username);
                customer.setUsername(username);
                request.getSession().setAttribute("customer", customer);
                Arrays.stream(request.getCookies()).forEach(c-> System.out.println(c.getName() + c.getValue()));
                Cookie currentURL = Arrays.stream(request.getCookies()).filter(c ->
                        c.getName().equals("currentURL")
                ).findFirst().orElse(null);
                if(currentURL != null)
                    response.sendRedirect(currentURL.getName());
                else response.sendRedirect("index.jsp");
            }else if(role.equals("ADMIN"))
            {
                request.getRequestDispatcher("views/admin/home.jsp").forward(request, response);
            }
        }
    }
}




