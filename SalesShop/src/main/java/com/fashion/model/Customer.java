package com.fashion.model;

import java.io.Serializable;

public class Customer implements Serializable {
    private int ID;
    private String name;
    private String email;
    private String avatar;
    private String phone;
    private String address;

    public Customer(int ID, String name, String email, String phone, String address, String avatar) {
        this.ID = ID;
        this.name = name;
        this.email = email;
        this.avatar = avatar;
        this.phone = phone;
        this.address = address;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
