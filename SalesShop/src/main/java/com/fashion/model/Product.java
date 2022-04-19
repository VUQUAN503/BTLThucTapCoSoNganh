package com.fashion.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product implements Serializable {
    private int productID;
    private String productName;
    private String urlImage;
    private int price;
    private int amount;
    private String size;
    private String color;
    private int status;
    private String description;
    private int categoryID;
}

