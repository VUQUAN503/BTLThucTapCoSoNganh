package com.fashion.mapper;

import com.fashion.model.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerMapper implements INewMapper<Customer> {
    @Override
    public Customer mapRow(ResultSet resultSet) {
        try {
            return new Customer(resultSet.getString(2),
                                resultSet.getString(3),
                                resultSet.getString(4),
                                resultSet.getString(5),
                                resultSet.getString(6),
                                resultSet.getInt(7));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
