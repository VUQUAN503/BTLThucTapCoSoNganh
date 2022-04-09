package com.fashion.dao;

import com.fashion.model.Product;

import java.util.List;
import java.util.Map;

public interface IProductDAO {
    List<Product> getAll();
    int save(Product product);
    Map<String, List<Product>> getByCategory(int category);
    List<Product> getByCategoryID(int category);
    List<Product> getThreeItemsByCategoryID(int category, int limit);
    Product findOne(int productID);
    boolean update(Product product);
}
