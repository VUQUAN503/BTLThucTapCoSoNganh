package com.fashion.dao.impl;

import com.fashion.dao.IProductDAO;
import com.fashion.mapper.ProductDetailMapper;
import com.fashion.mapper.ProductMapper;
import com.fashion.model.Product;

import java.util.List;
import java.util.Map;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{

    @Override
    public int save(Product product) {
        String query = "INSERT INTO Product(name, status, description, categoryID) values(?, ?, ?, ?)";
        return insert(query, product.getProductName(), product.getStatus(), product.getDescription(), product.getCategoryID());
    }

    @Override
    public Map<Object, Product> getByCategory(int category) {
        String sql = "SELECT Product.ID, name, image, color, size, price, amount, status, description, categoryID FROM Product INNER JOIN Pro_Col_Siz ON Product.ID = Pro_Col_Siz.productID INNER JOIN Color ON Color.ID = Pro_Col_Siz.colorID INNER JOIN Size ON Size.ID = Pro_Col_Siz.sizeID WHERE categoryID = ?";
        return queryProduct(sql, new ProductMapper(), new ProductDetailMapper(), category);
    }

    @Override
    public Map<Object, Product> getThreeItemsByCategoryID(int category, int offset) {
        String sql = "SELECT Product.ID, name, image, color, size, price, amount, status, description, categoryID FROM Product INNER JOIN Pro_Col_Siz ON Product.ID = Pro_Col_Siz.productID INNER JOIN Color ON Color.ID = Pro_Col_Siz.colorID INNER JOIN Size ON Size.ID = Pro_Col_Siz.sizeID WHERE categoryID = ? LIMIT 3 OFFSET ?";
        return queryProduct(sql, new ProductMapper(), new ProductDetailMapper(), category, offset);
    }

    @Override
    public Product findOne(int productID) {
        String sql = "SELECT Product.ID, name, image, color, size, price, amount, status, description, categoryID FROM Product INNER JOIN Pro_Col_Siz ON Product.ID = Pro_Col_Siz.productID INNER JOIN Color ON Color.ID = Pro_Col_Siz.colorID INNER JOIN Size ON Size.ID = Pro_Col_Siz.sizeID WHERE Product.ID = ?";
        return queryProduct(sql, new ProductMapper(), new ProductDetailMapper(), productID).get(productID);
    }

    @Override
    public void insertProductDetail(Object...params) {
        String sql = "INSERT INTO Pro_Col_Siz VALUES(?, ?, ?, ?, ?, ?)";
        insert(sql, params);
    }

    @Override
    public boolean update(Product product) {
        String query = "UPDATE Product SET name = ?, status = ?, description = ?, category = ?";
        return updateOrDelete(query, product.getProductName(), product.getStatus(), product.getDescription(), product.getCategoryID());
    }

    @Override
    public boolean updateDetail(Object... params) {
        String query = "UPDATE Pro_Col_Siz SET amount = ?, price = ?, image = ? WHERE productID = ?, colorID = ?, sizeID = ?";
        return updateOrDelete(query, params);
    }

    @Override
    public Integer getColorID(String color) {
        String sql = "SELECT ID FROM Color WHERE color = ?";
        return getSingleObject(sql, 1, Integer.class, color);
    }

    @Override
    public Integer saveColor(String color) {
        String sql = "INSERT INTO Color(color) VALUES(?)";
        return insert(sql, color);
    }

    @Override
    public Integer getSizeID(String size) {
        String sql = "SELECT ID FROM Size WHERE size = ?";
        return getSingleObject(sql, 1, Integer.class, size);
    }

    @Override
    public List<String> getAllColorOfProduct(int productID) {
        String sql = "SELECT color FROM Color WHERE ID IN (SELECT colorID FROM Pro_Col_Siz WHERE productID = ?)";
        return getListObject(sql, String.class, productID);
    }

    @Override
    public List<String> getAllSizeOfColor(int productID, int colorID) {
        String sql = "SELECT size FROM Size WHERE ID IN (SELECT sizeID FROM Pro_Col_Siz WHERE productID = ? AND colorID = ?)";
        return getListObject(sql, String.class, productID, colorID);
    }
}

