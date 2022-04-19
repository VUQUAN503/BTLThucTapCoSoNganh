package com.fashion.mapper;

import com.fashion.model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements INewMapper<Category> {

    @Override
    public Category mapRow(ResultSet resultSet) {
        try {
            return new Category(resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getString(3)
                               );
        } catch (SQLException e) {
            return null;
        }
    }
}
