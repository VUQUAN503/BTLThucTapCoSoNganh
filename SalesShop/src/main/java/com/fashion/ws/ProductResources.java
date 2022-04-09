package com.fashion.ws;

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

@Path("/products")
public class ProductResources {

    @Inject
    private IProductDAO dao;

    @Context
    private UriInfo uriInfo;


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Product getName(){
        return dao.findOne(4);
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
        return Response.status(Response.Status.OK).entity(dao.getByCategoryID(categoryID)).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/category/{categoryID}/{limit}")
    public Response getThreeItemsByCategoryID(@PathParam("categoryID")int categoryID, @PathParam("limit") int limit)
    {
        return Response.status(Response.Status.OK).entity(dao.getThreeItemsByCategoryID(categoryID, limit)).build();
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
