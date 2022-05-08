package com.fashion.ws;


import com.fashion.dao.ICustomerDAO;
import com.fashion.mail.SendMail;
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

    @GET
    @Path("/{customerID}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getOne(@PathParam("customerID") int ID){
        try{
            Customer customer = dao.getOne(ID);
            if(customer != null)
                return Response.status(Response.Status.OK).entity(new ResponseObject(
                        "OK",
                        "find successfully",
                        customer
                )).build();
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "FAIL",
                    "Can't not find customer with id = " + ID,
                    ""
            )).build();
        }catch (Exception e){
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
    }


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/ID/{username}")
    public Response getID(@PathParam("username") String username)
    {
        try{
            Integer customerID = dao.getCustomerID(username);
            if(customerID != null)
                return Response.status(Response.Status.OK).entity(new ResponseObject(
                        "OK",
                        "find successfully",
                        customerID
                )).build();
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "FAIL",
                    "Can't not find customer with username = " + username,
                    ""
            )).build();
        }catch (Exception e){
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
    }

    @POST
    @Path("/register")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response insert(Customer customer)
    {
        try{
            Integer customerID = dao.save(customer);
            if(customerID != null)
                dao.saveAccount(customer.getUsername(), customer.getPassword(), customerID);
            SendMail.send(customer.getEmail(), "SalesShop", "Cảm ơn quý khách đã đăng ký tài khoản");
            return Response.status(Response.Status.CREATED).build();
        }catch (Exception e)
        {
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(Customer customer)
    {
        try {
            if(dao.update(customer)){
                return Response.status(Response.Status.OK).entity(new ResponseObject(
                        "OK",
                        "updated successfully",
                        ""
                )).build();
            }
        }catch (Exception e){
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
        return null;
    }
}
