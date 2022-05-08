package com.fashion.ws;

import com.fashion.dao.ICategoryDAO;
import com.fashion.model.Product;
import com.fashion.model.ResponseObject;
import com.fashion.service.IProductService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.HashMap;
import java.util.Map;

@Path("/products")
public class ProductResources {

    @Inject
    private IProductService dao;

    @Inject
    private ICategoryDAO categoryDAO;

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String hello(){
        return "Welcome to our project";
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{productID}")
    public Response getOne(@PathParam("productID") int productID){
        try {
            Product product = dao.findOne(productID);
            if(product != null)
                return Response.status(Response.Status.OK).entity(new ResponseObject("ok", "find product success", dao.findOne(productID))).build();
            return Response.status(Response.Status.OK).entity(new ResponseObject("ok", "can't not find product with id = " + productID, "")).build();
        }catch (Exception e)
        {
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject("false", e.getMessage(), "")).build();
        }
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("category/{categoryID}")
    public Response getByCategory(@PathParam("categoryID") int categoryID){
        try {
            Map<Object, Object> data = new HashMap<>();
            Map<Object, Product> products = dao.getByCategory(categoryID);
            data.put("name", categoryDAO.getName(categoryID));
            data.put("amount", products.size());
            data.put("products", products);
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "ok",
                    "success",
                    data
            )).build();
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "false",
                    e.getMessage(),
                    ""
            )).build();
        }
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/category/{categoryID}/{limit}")
    public Response getThreeItemsByCategoryID(@PathParam("categoryID")int categoryID, @PathParam("limit") int limit)
    {
        try {
            Map<Object, Object> data = new HashMap<>();
            Map<Object, Product> products = dao.getThreeItemsByCategoryID(categoryID, limit);
            data.put("name", categoryDAO.getName(categoryID));
            data.put("amount", products.size());
            data.put("products", products);
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "ok",
                    "success",
                    data
            )).build();
        }catch (Exception e)
        {
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "false",
                    e.getMessage(),
                    ""
            )).build();
        }
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response save(Product product) {
        try {
            dao.save(product);
        }catch (Exception e){
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
        return Response.status(Response.Status.CREATED).build();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(Product product)
    {
        boolean isUpdated = dao.update(product);
        if(isUpdated)
            return Response.status(Response.Status.OK).build();
        return Response.status(Response.Status.NOT_ACCEPTABLE).build();
    }
}