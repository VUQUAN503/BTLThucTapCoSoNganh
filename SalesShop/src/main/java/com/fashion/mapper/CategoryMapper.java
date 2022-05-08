package com.fashion.mapper;

import com.fashion.model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements INewMapper<Category> {

    @Override
    public Category mapRow(ResultSet resultSet) {
        try {
            return new Category(1,
                                resultSet.getString("name"),
                                resultSet.getString("description"),
                                resultSet.getString("image"),
                                resultSet.getInt("count")
                               );
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
