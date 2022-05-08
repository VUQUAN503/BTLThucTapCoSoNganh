package com.fashion.dao.impl;

import com.fashion.dao.ICustomerDAO;
import com.fashion.mapper.CustomerMapper;
import com.fashion.model.Customer;

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

    @Override
    public Integer getCustomerID(String username) {
        String query = "SELECT customerID FROM Account WHERE username = ?";
        return getSingleObject(query, 1, Integer.class, username);
    }

    @Override
    public Customer findOne(String username) {
        String query = "SELECT name, email, avatar, phone, address, gender FROM Account INNER JOIN Customer ON Account.customerID = Customer.ID WHERE username = ?";
        return query(query, new CustomerMapper(), username).get(0);
    }

    @Override
    public Customer getOne(int ID) {
        String query = "SELECT * FROM Customer WHERE ID = ?";
        return query(query, new CustomerMapper(), ID).get(0);
    }

    @Override
    public boolean update(Customer customer) {
        String query = "UPDATE Customer SET name = ?, phone = ?, email = ?, address = ?, avatar = ? WHERE ID = ?";
        return updateOrDelete(query, customer.getName(), customer.getPhone(), customer.getEmail(), customer.getAddress(), customer.getAvatar(), customer.getID());
    }
}
