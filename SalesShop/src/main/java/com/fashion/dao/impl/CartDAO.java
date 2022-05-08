package com.fashion.dao.impl;

import com.fashion.dao.ICartDAO;
import com.fashion.mapper.CartItemMapper;
import com.fashion.model.CartItem;

import java.util.List;

public class CartDAO extends AbstractDAO<CartItem> implements ICartDAO {
    @Override
    public List<CartItem> loadCartOfCustomer(int orderID, int customerID) {
        String query = "SELECT Product.ID, orderID, name, color, image, size, amount, price FROM CartItem INNER JOIN Product ON Product.ID = CartItem.productID INNER JOIN Orders ON Orders.ID = CartItem.orderID WHERE orderID = ? AND customerID = ?";
        return query(query, new CartItemMapper(), orderID, customerID);
    }

    @Override
    public Integer saveCart(int customerID) {
        String query = "INSERT INTO Orders(customerID) VALUES(?)";
        return insert(query, customerID);
    }

    @Override
    public void saveCartItem(Object...params) {
        String query = "INSERT INTO CartItem VALUES(?, ?, ?, ?, ?, ?, ?)";
        insert(query, params);
    }

    @Override
    public boolean updateCart(CartItem cartItem) {
        String query = "UPDATE CartItem SET amount = ? WHERE orderID = ? AND productID = ?";
        return updateOrDelete(query, cartItem.getAmount(), cartItem.getCartID(), cartItem.getProductID());
    }

    @Override
    public boolean deleteCartItem(int orderID, int productID) {
        String sql = "DELETE FROM CartItem WHERE orderID = ? AND productID = ?";
        return updateOrDelete(sql, orderID, productID);
    }

    @Override
    public Integer getCartID(int customerID) {
        String query = "SELECT ID FROM Orders WHERE status = 0 AND customerID = ?";
        return getSingleObject(query, 1, Integer.class, customerID);
    }

    @Override
    public boolean isExistsCart(int orderID, int customerID) {
        String query = "SELECT ID FROM Orders WHERE ID = ? AND customerID = ?";
        return getSingleObject(query, 1, Integer.class, orderID, customerID) != null;
    }
}
