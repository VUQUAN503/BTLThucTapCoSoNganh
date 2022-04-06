package com.fashion.dao;

import com.fashion.model.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> getAll();
    int save(Product product);
}
