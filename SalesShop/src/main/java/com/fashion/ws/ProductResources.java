package com.fashion.ws;

import com.fashion.dao.ICategoryDAO;
import com.fashion.dao.IProductDAO;
import com.fashion.model.Product;
import com.fashion.model.ResponseObject;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Path("/products")
public class ProductResources {

    @Inject
    private IProductDAO dao;

    @Inject
    private ICategoryDAO categoryDAO;

    @Context
    private UriInfo uriInfo;

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
            List<Product> list = dao.getByCategory(categoryID);
            data.put("name", categoryDAO.getName(categoryID));
            data.put("amount", list.size());
            data.put("products", list);
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "ok",
                    "success",
                    data
            )).build();
        }catch (Exception e)
        {
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
            List<Product> list = dao.getThreeItemsByCategoryID(categoryID, limit);
            list.stream().sorted(Comparator.comparing(Product::getPrice));
            data.put("name", categoryDAO.getName(categoryID));
            data.put("amount", list.size());
            data.put("products", list);
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
    public Response save(Product product) throws URISyntaxException {
        try {
            Integer productID = dao.save(product);
            URI url = new URI(uriInfo.getBaseUri() + "products/" + productID);
            return Response.created(url).entity(new ResponseObject(
                    "ok",
                    "product created successfully",
                    product
            )).build();
        }catch (Exception e){
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "false",
                    e.getMessage(),
                    ""
            )).build();
        }
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