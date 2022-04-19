package com.fashion.dao.impl;

import com.fashion.dao.IAddressDAO;

@SuppressWarnings("unused")
public class AddressDAO extends AbstractDAO<String> implements IAddressDAO {

    @Override
    public Object getProvinces() {
        String sql = "SELECT `Tỉnh` FROM Province";
        return getListObject(sql, String.class);
    }

    @Override
    public Object getDistrictsByProvince(String province) {
        String sql = "SELECT `Quận Huyện` FROM District WHERE provinceID IN ( SELECT ID FROM Province WHERE `Tỉnh` = ?)";
        return getListObject(sql, String.class, province);
    }

    @Override
    public Object getWardsByDistrict(String province, String district) {
        String sql = "SELECT `Phường Xã` FROM Ward WHERE districtID IN (SELECT ID FROM District WHERE `Quận Huyện` = ? AND provinceID = (SELECT ID FROM Province WHERE  `Tỉnh` = ?))";
        return getListObject(sql, String.class, district, province);
    }
}