package com.fashion.mapper;

import com.fashion.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements INewMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet) {
        try {
            return new Product(resultSet.getInt("ID"),
                               resultSet.getString("name"),
                               resultSet.getInt("status"),
                               resultSet.getString("description"),
                               resultSet.getInt("categoryID"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
