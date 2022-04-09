package com.fashion.dao.impl;

import com.fashion.dao.IProductDAO;
import com.fashion.mapper.ProductMapper;
import com.fashion.model.Product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("unused")
public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{
    @Override
    public List<Product> getAll() {
        String sql = "SELECT * FROM Product";
        return query(sql, new ProductMapper());
    }

    @Override
    public int save(Product product) {
        String sql = "INSERT INTO Product(name, urlImage, price, description, categoryID) values(?, ?, ?, ?, ?)";
        return insert(sql, product.getProductName(), product.getUrlImage(), product.getPrice(), product.getDescription(), product.getCategoryID());
    }

    @Override
    public Map<String, List<Product>> getByCategory(int category) {
        String sql = "SELECT * FROM Product WHERE categoryID = ?";
        Map<String, List<Product>> data = new HashMap<>();
        data.put(getSingleObject("SELECT Name FROM Category WHERE ID = ?", 1, String.class, category), query(sql, new ProductMapper(), category));
        return data;
    }

    @Override
    public List<Product> getByCategoryID(int category) {
        String sql = "SELECT * FROM Product WHERE categoryID = ?";
       return query(sql, new ProductMapper(), category);
    }

    @Override
    public List<Product> getThreeItemsByCategoryID(int category, int limit) {
        String sql = "SELECT * FROM fn_getProductByCategoryID(?) ORDER BY Name OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        return query(sql, new ProductMapper(), category, limit);
    }

    @Override
    public Product findOne(int productID) {
        String sql = "SELECT * FROM Product WHERE ID = ?";
        return query(sql, new ProductMapper(), productID).get(0);
    }

    @Override
    public boolean update(Product product) {
        String sql = "UPDATE Product SET Name = ?, urlImage = ?, price = ?, description = ?, categoryID = ? WHERE ID = ?";
        return updateOrDelete(sql, product.getProductName()
                                 , product.getUrlImage()
                                 , product.getPrice()
                                 , product.getDescription()
                                 , product.getCategoryID()
                                 , product.getProductID());
    }
}
