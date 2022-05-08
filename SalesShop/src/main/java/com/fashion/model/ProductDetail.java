package com.fashion.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetail {
    private String color;
    private String size;
    private String image;
    private int amount;
    private int price;
}
