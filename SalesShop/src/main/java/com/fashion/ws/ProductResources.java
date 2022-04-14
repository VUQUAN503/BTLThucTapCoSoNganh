package com.fashion.ws;

import com.fashion.dao.ICategoryDAO;
import com.fashion.dao.IProductDAO;
import com.fashion.model.Product;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.net.URI;
import java.net.URISyntaxException;
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
    public Product getOne(@PathParam("productID") int productID){
        return dao.findOne(productID);
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("category/{categoryID}")
    public Response getByCategory(@PathParam("categoryID") int categoryID){
        Map<Object, Object> data = new HashMap<>();
        List<Product> list = dao.getByCategory(categoryID);
        data.put("name", categoryDAO.getName(categoryID));
        data.put("amount", list.size());
        data.put("products", list);
        return Response.status(Response.Status.OK).entity(data).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/category/{categoryID}/{limit}")
    public Response getThreeItemsByCategoryID(@PathParam("categoryID")int categoryID, @PathParam("limit") int limit)
    {
        Map<Object, Object> data = new HashMap<>();
        List<Product> list = dao.getThreeItemsByCategoryID(categoryID, limit);
        data.put("name", categoryDAO.getName(categoryID));
        data.put("amount", list.size());
        data.put("products", list);
        return Response.status(Response.Status.OK).entity(data).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response save(Product product) throws URISyntaxException {
        Integer productID = dao.save(product);
        URI url = new URI(uriInfo.getBaseUri() + "products/" + productID);
        return Response.created(url).build();
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