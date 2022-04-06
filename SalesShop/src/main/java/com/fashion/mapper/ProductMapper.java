package com.fashion.mapper;

import com.fashion.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements INewMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet) {
        try {
            return new Product(resultSet.getInt(1),
                               resultSet.getString(2),
                               resultSet.getString(3),
                               resultSet.getInt(4),
                               resultSet.getString(5),
                               resultSet.getInt(6));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
