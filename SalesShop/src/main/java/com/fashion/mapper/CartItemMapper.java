package com.fashion.mapper;

import com.fashion.model.CartItem;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartItemMapper implements INewMapper<CartItem> {
    @Override
    public CartItem mapRow(ResultSet resultSet) {
        try{
            return new CartItem(resultSet.getInt("orderID"),
                                resultSet.getInt("ID"),
                                resultSet.getString("name"),
                                resultSet.getString("image"),
                                resultSet.getString("color"),
                                resultSet.getString("size"),
                                resultSet.getInt("price"),
                                resultSet.getInt("amount")
                                );
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
