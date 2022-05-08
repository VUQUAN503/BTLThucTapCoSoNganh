package com.fashion.dao.impl;

import com.fashion.dao.ICategoryDAO;
import com.fashion.mapper.CategoryMapper;
import com.fashion.model.Category;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO{
    @Override
    public Category findOne(int ID) {
        String sql = "SELECT Category.name, image, Category.description, count(Product.ID) AS count FROM Category LEFT JOIN Product ON Category.ID = Product.categoryID WHERE Category.ID = ? GROUP BY Category.name, image, Category.description";
        return query(sql, new CategoryMapper(), ID).get(0);
    }

    @Override
    public List<Category> getAll() {
        String sql = "SELECT Category.name, image, Category.description, count(Product.ID) AS count FROM Category LEFT JOIN Product ON Category.ID = Product.categoryID GROUP BY Category.name, image, Category.description";
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

    @Override
    public String getName(int ID) {
        String sql = "SELECT name FROM Category WHERE ID = ?";
        return getSingleObject(sql, 1, String.class, ID);
    }
}
