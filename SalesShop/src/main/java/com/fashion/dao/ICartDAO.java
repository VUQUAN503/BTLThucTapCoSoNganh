package com.fashion.dao;

import com.fashion.model.CartItem;

import java.util.List;

public interface ICartDAO {
    List<CartItem> loadCartOfCustomer(int orderID, int customerID);
    Integer saveCart(int customerID);
    void saveCartItem(Object... params);
    boolean updateCart(CartItem cartItem);
    boolean deleteCartItem(int orderID, int productID);
    Integer getCartID(int customerID);
    boolean isExistsCart(int orderID, int customerID);
}
