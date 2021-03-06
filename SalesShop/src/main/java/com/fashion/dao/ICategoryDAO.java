package com.fashion.dao;

import com.fashion.model.Category;

import java.util.List;

public interface ICategoryDAO extends GenericDAO<Category> {
    Category findOne(int ID);
    List<Category> getAll();
    int insert(Category category);
    boolean update(Category category);
    String getName(int ID);
}
