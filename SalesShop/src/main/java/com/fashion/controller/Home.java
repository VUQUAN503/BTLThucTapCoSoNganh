package com.fashion.controller;

import com.fashion.dao.ICartDAO;
import com.fashion.dao.ICustomerDAO;
import com.fashion.model.CartItem;

import javax.inject.Inject;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "home", value = "/home")
public class Home extends HttpServlet {

    @Inject
    private ICustomerDAO dao;

    @Inject
    private ICartDAO cartDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getSession().getAttribute("name").toString();
        try {
            if(name != null){
                Integer customerID = dao.getCustomerID(name);
                Integer orderID = cartDAO.getCartID(customerID);
                if(orderID != null)
                {
                    List<CartItem> carts = cartDAO.loadCartOfCustomer(customerID, customerID);
                    request.setAttribute("carts", carts);
                }
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){

    }
}
