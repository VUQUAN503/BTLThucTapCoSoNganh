package com.fashion.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class Product implements Serializable {
    private int productID;
    private String productName;
    List<ProductDetail> detail;
    private int status;
    private String description;
    private int categoryID;

    public Product(String productName, int status, String description, int categoryID) {
        this.productName = productName;
        this.status = status;
        this.description = description;
        this.categoryID = categoryID;
    }

    public Product(int productID, String productName, int status, String description, int categoryID) {
        this.productID = productID;
        this.productName = productName;
        this.status = status;
        this.description = description;
        this.categoryID = categoryID;
    }

    public List<ProductDetail> getDetail() {
        if(detail == null)
            detail = new ArrayList<>();
        return detail;
    }
}

