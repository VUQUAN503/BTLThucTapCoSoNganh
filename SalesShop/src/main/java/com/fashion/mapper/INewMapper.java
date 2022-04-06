package com.fashion.mapper;

import java.sql.ResultSet;

public interface INewMapper <T>{
    T mapRow(ResultSet resultSet);
}
