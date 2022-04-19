package com.fashion.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order implements Serializable {
    private int ID;
    private Date createDate;
    private int status;
    private Date shipDate;
    private int customerID;
}
