package com.fashion.model;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
    private int ID;
    private Date createDate;
    private int status;
    private Date shipDate;
    private int customerID;

    public Order(int ID, Date createDate, int status, Date shipDate, int customerID) {
        this.ID = ID;
        this.createDate = createDate;
        this.status = status;
        this.shipDate = shipDate;
        this.customerID = customerID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getShipDate() {
        return shipDate;
    }

    public void setShipDate(Date shipDate) {
        this.shipDate = shipDate;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }
}
