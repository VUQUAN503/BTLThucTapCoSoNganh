package com.fashion.service;

import com.fashion.model.Product;

import java.util.Map;

public interface IProductService {
    int save(Product product);
    Map<Object, Product> getByCategory(int category);
    Map<Object, Product> getThreeItemsByCategoryID(int category, int limit);
    Product findOne(int productID);
    boolean update(Product product);
}
