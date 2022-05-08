package com.fashion.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Category implements Serializable {
    private int categoryID;
    private String categoryName;
    private String description;
    private String image;
    private int countProduct;
}
