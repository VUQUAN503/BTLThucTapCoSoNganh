package com.fashion.dao.impl;

import com.fashion.dao.GenericDAO;
import com.fashion.mapper.INewMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbstractDAO<T> implements GenericDAO<T> {

    private Connection getConnection(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SalesShop";
            return DriverManager.getConnection(url, "sa", "1");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<T> query(String sql, INewMapper<T> mapper, Object... params) {
        List<T> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            con = getConnection();
            assert con != null;
            statement = con.prepareStatement(sql);
            setParameter(statement, params);
            resultSet = statement.executeQuery();
            while(resultSet.next())
                list.add(mapper.mapRow(resultSet));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            closeCon(con, statement, resultSet);
        }
        return list;
    }

    @Override
    public Integer insert(String sql, Object... params) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        int id = 0;
        try {
            con = getConnection();
            assert con != null;
            con.setAutoCommit(false);
            statement = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            setParameter(statement, params);
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) id = resultSet.getInt(1);
            con.commit();
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
                return null;
            }
        } finally {
            closeCon(con, statement, resultSet);
        }
        return id;
    }

    @Override
    public <G> G getSingleObject(String sql, Integer columnIndex, Class<G> gClass, Object... params) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        G data = null;
        try{
            con = getConnection();
            assert con != null;
            statement = con.prepareStatement(sql);
            setParameter(statement, params);
            resultSet = statement.executeQuery();
            data = getParameter(resultSet, gClass);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeCon(con, statement, resultSet);
        }
        return data;
    }

    @Override
    public <G> List<G> getListObject(String sql, Class<G> gClass, Object... params) {
        List<G> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try{
            con = getConnection();
            assert con != null;
            statement = con.prepareStatement(sql);
            setParameter(statement, params);
            resultSet = statement.executeQuery();
            while (resultSet.next())
                list.add((G) resultSet.getObject(1));
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeCon(con, statement, resultSet);
        }
        return list;
    }

    @Override
    public Boolean updateOrDelete(String sql, Object... params) {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = getConnection();
            assert con != null;
            statement = con.prepareStatement(sql);
            setParameter(statement, params);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            closeCon(con, statement, null);
        }
        return true;
    }

    protected void closeCon(Connection con, PreparedStatement statement, ResultSet resultSet) {
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void setParameter(PreparedStatement statement, Object... params) throws SQLException {
        for (int i = 0; i < params.length; ++i) {
            Object param = params[i];
            if (param instanceof Long) statement.setLong(i + 1, (Long) param);
            else if (param instanceof Integer) statement.setInt(i + 1, (Integer) param);
            else if (param instanceof Float) statement.setFloat(i + 1, (Float) param);
            else if (param instanceof String) statement.setString(i + 1, (String) param);
            else if (param instanceof Double) statement.setDouble(i + 1, (Double) param);
            else if (param instanceof java.util.Date) statement.setDate(i + 1, new java.sql.Date(((java.util.Date) param).getTime()));
            else if (param == null) statement.setNull(i + 1, java.sql.Types.NULL);
        }
    }

    private <G> G getParameter(ResultSet rs, Class<G> gClass) {
        try {
            return rs.getObject(1, gClass);
        } catch (SQLException e) {
            return null;
        }
    }
}
