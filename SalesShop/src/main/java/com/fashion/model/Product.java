package com.fashion.model;

import java.io.Serializable;

public class Product implements Serializable {
    private int productID;
    private String productName;
    private String urlImage;
    private int price;
    private String description;
    private int categoryID;

    public Product(){}

    public Product(String productName, String urlImage, int price, String description, int categoryID) {
        this.productName = productName;
        this.urlImage = urlImage;
        this.price = price;
        this.description = description;
        this.categoryID = categoryID;
    }

    public Product(int productID, String productName, String urlImage, int price, String description, int categoryID) {
        this.productID = productID;
        this.productName = productName;
        this.urlImage = urlImage;
        this.price = price;
        this.description = description;
        this.categoryID = categoryID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }
}
