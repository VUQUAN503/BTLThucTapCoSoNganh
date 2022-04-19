package com.fashion.dao.impl;

import com.fashion.dao.IProductDAO;
import com.fashion.mapper.ProductMapper;
import com.fashion.model.Product;

import java.util.List;

@SuppressWarnings("unused")
public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{

    @Override
    public int save(Product product) {
        String sql = "INSERT INTO Product(name, image, price, status, description, categoryID) values(?, ?, ?, ?, ?, ?)";
        return insert(sql, product.getProductName(), product.getUrlImage(), product.getPrice(), product.getStatus(), product.getDescription(), product.getCategoryID());
    }

    @Override
    public List<Product> getByCategory(int category) {
        String sql = "SELECT * FROM Product WHERE categoryID = ?";
        return query(sql, new ProductMapper(), category);
    }

    @Override
    public List<Product> getThreeItemsByCategoryID(int category, int offset) {
        String sql = "SELECT * FROM Product WHERE categoryID = ? LIMIT 3 OFFSET ?";
        return query(sql, new ProductMapper(), category, offset);
    }

    @Override
    public Product findOne(int productID) {
        String sql = "SELECT * FROM Product WHERE ID = ?";
        return query(sql, new ProductMapper(), productID).get(0);
    }

    @Override
    public boolean update(Product product) {
        String sql = "UPDATE Product SET name = ?, image = ?, price = ?, description = ?, categoryID = ? WHERE ID = ?";
        return updateOrDelete(sql, product.getProductName()
                                 , product.getUrlImage()
                                 , product.getPrice()
                                 , product.getDescription()
                                 , product.getCategoryID()
                                 , product.getProductID());
    }
}
