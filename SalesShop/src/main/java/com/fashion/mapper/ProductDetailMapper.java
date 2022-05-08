package com.fashion.mapper;

import com.fashion.model.ProductDetail;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDetailMapper implements INewMapper<ProductDetail> {

    @Override
    public ProductDetail mapRow(ResultSet resultSet) {
        try {
            return new ProductDetail(resultSet.getString("color"),
                                    resultSet.getString("size"),
                                    resultSet.getString("image"),
                                    resultSet.getInt("amount"),
                                    resultSet.getInt("price"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
