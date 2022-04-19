package com.fashion.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
public class Customer implements Serializable {
    private int ID;
    private String name;
    private String email;
    private String avatar;
    private String phone;
    private String address;
    private int gender;
    private String username;
    private String password;

    public Customer(String name, String email, String avatar, String phone, String address, int gender) {
        this.name = name;
        this.email = email;
        this.avatar = avatar;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
    }

    public Customer(String name, String email, String avatar, String phone, String address, int gender, String username, String password) {
        this.name = name;
        this.email = email;
        this.avatar = avatar;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.username = username;
        this.password = password;
    }
}
