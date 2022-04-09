package com.fashion.dao.impl;

import com.fashion.dao.IAddressDAO;

@SuppressWarnings("unused")
public class AddressDAO extends AbstractDAO<String> implements IAddressDAO {

    @Override
    public Object getProvinces() {
        String sql = "SELECT [Tỉnh] FROM Province";
        return getListObject(sql, String.class);
    }

    @Override
    public Object getDistrictsByProvince(String province) {
        String sql = "SELECT * FROM fn_getListDistrictByProvince(?)";
        return getListObject(sql, String.class, province);
    }

    @Override
    public Object getWardsByDistrict(String province, String district) {
        String sql = "SELECT * FROM fn_getListWardByDistrictAndProvince(?, ?)";
        return getListObject(sql, String.class, province, district);
    }
}