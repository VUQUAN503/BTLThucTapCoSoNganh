package com.fashion.dao.impl;

import com.fashion.dao.IProductDAO;
import com.fashion.mapper.ProductMapper;
import com.fashion.model.Product;

import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{
    @Override
    public List<Product> getAll() {
        String sql = "SELECT * FROM Product";
        return query(sql, new ProductMapper());
    }

    @Override
    public int save(Product product) {
        String sql = "INSERT INTO Product(name, urlImage, price, description, categoryID) values(?, ?, ?, ?, ?)";
        return insert(sql, product.getProductName(), product.getUrlImage(), product.getPrice(), product.getDescription(), product.getProductID());
    }
}
