package com.fashion.mapper;

import com.fashion.model.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerMapper implements INewMapper<Customer> {
    @Override
    public Customer mapRow(ResultSet resultSet) {
        try {
            return new Customer(1,
                                resultSet.getString("name"),
                                resultSet.getString("email"),
                                resultSet.getString("avatar"),
                                resultSet.getString("phone"),
                                resultSet.getString("address"),
                                resultSet.getInt("gender"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
