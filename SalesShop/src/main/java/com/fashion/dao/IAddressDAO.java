package com.fashion.dao;

public interface IAddressDAO {
    Object getProvinces();
    Object getDistrictsByProvince(String province);
    Object getWardsByDistrict(String province, String district);
}
