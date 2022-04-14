package com.fashion.dao.impl;

import com.fashion.dao.ICategoryDAO;
import com.fashion.mapper.CategoryMapper;
import com.fashion.model.Category;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO{
    @Override
    public String getName(int ID) {
        String sql = "SELECT Name FROM Category WHERE ID = ?";
        return getSingleObject(sql, 1, String.class, ID);
    }

    @Override
    public List<Category> getAll() {
        String sql = "SELECT * FROM Category";
        return query(sql, new CategoryMapper());
    }

    @Override
    public int insert(Category category) {
        String sql = "INSERT INTO Category(Name, Description) VALUES(?, ?)";
        return insert(sql, category.getCategoryName(), category.getDescription());
    }

    @Override
    public boolean update(Category category) {
        String sql = "UPDATE Category SET name = ?, description = ? WHERE ID = ?";
        return updateOrDelete(sql, category.getCategoryName(), category.getDescription(), category.getCategoryID());
    }
}
