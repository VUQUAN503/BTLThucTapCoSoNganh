package com.fashion.ws;


import com.fashion.dao.ICustomerDAO;
import com.fashion.model.Customer;
import com.fashion.model.ResponseObject;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/customer")
public class CustomerAPI {
    @Inject
    private ICustomerDAO dao;

    @POST
    @Path("/register")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response insert(Customer customer)
    {
        Integer customerID = dao.save(customer);
        if(customerID != null)
            dao.saveAccount(customer.getUsername(), customer.getPassword(), customerID);
        return Response.status(Response.Status.CREATED).build();
    }
}
