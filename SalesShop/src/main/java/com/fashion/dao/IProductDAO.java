package com.fashion.dao;

import com.fashion.model.Product;

import java.util.List;
import java.util.Map;

public interface IProductDAO extends GenericDAO<Product>{
    int save(Product product);
    Map<Object, Product> getByCategory(int category);
    Map<Object, Product> getThreeItemsByCategoryID(int category, int limit);
    Product findOne(int productID);
    void insertProductDetail(Object...params);
    boolean update(Product product);
    boolean updateDetail(Object...params);
    Integer getColorID(String color);
    Integer saveColor(String color);
    Integer getSizeID(String size);
    List<String> getAllColorOfProduct(int productID);
    List<String> getAllSizeOfColor(int productID, int colorID);
}
