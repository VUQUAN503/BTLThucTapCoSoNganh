package com.fashion.dao;

import com.fashion.model.Product;

import java.util.List;

public interface IProductDAO extends GenericDAO<Product>{
    int save(Product product);
    List<Product> getByCategory(int category);
    List<Product> getThreeItemsByCategoryID(int category, int limit);
    Product findOne(int productID);
    boolean update(Product product);
}
