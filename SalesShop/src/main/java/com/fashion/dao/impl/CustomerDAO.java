package com.fashion.dao.impl;

import com.fashion.dao.ICustomerDAO;
import com.fashion.model.Customer;

@SuppressWarnings("unused")
public class CustomerDAO extends AbstractDAO<Customer> implements ICustomerDAO{
    @Override
    public String checkLogin(String userName, String pass) {
        String sql = "SELECT role FROM Role WHERE ID = (SELECT roleID from Account WHERE username = ? AND password = ?)";
        return getSingleObject(sql, 1, String.class, userName, pass);
    }

    @Override
    public Integer save(Customer customer) {
        String sql = "INSERT INTO Customer(name, email, phone, address, avatar, gender) VALUES(?, ?, ?, ?, ?, ?)";
        return insert(sql, customer.getName(), customer.getEmail(), customer.getPhone(), customer.getAddress(), customer.getAvatar(), customer.getGender());
    }

    @Override
    public void saveAccount(String userName, String password, Integer customerID) {
        String sql = "INSERT INTO Account(username, password, customerID) VALUES(?, ?, ?)";
        insert(sql, userName, password, customerID);
    }
}
