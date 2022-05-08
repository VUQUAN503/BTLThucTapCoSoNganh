package com.fashion.dao;


import com.fashion.model.Customer;

public interface ICustomerDAO{

    String checkLogin(String userName, String pass);
    Integer save(Customer customer);
    void saveAccount(String userName, String password, Integer customerID);
    Integer getCustomerID(String username);
    Customer findOne(String username);
    Customer getOne(int ID);
    boolean update(Customer customer);
}
