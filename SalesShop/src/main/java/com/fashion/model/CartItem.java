package com.fashion.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@NoArgsConstructor
public class CartItem implements Serializable {
    private int cartID;
    private int productID;
    private String name;
    private String image;
    private String color;
    private String size;
    private int price;
    private int amount;

    public CartItem(int productID, String name, String image, String color, String size, int price, int amount) {
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.color = color;
        this.size = size;
        this.price = price;
        this.amount = amount;
    }

    public CartItem(int cartID, int productID, String name, String image, String color, String size, int price, int amount) {
        this.cartID = cartID;
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.color = color;
        this.size = size;
        this.price = price;
        this.amount = amount;
    }
}