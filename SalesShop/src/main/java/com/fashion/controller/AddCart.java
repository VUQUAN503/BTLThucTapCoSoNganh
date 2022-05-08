package com.fashion.controller;

import com.fashion.dao.ICartDAO;
import com.fashion.dao.ICustomerDAO;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "add-cart", value = "/add-cart")
public class AddCart extends HttpServlet {

    @Inject
    private ICustomerDAO customerDAO;

    @Inject
    private ICartDAO cartDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getSession().getAttribute("name").toString();
        if(name != null)
        {
            Integer customerID = customerDAO.getCustomerID(name);
            if(customerID != null)
            {
                Integer orderID = cartDAO.getCartID(customerID);
                if(orderID == null)
                {

                }
            }
        }
    }
}
