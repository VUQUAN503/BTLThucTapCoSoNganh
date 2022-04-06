package com.fashion.ws;

import com.fashion.dao.IProductDAO;
import com.fashion.dao.impl.ProductDAO;
import com.fashion.model.Product;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
import java.util.Map;

@Path("/products")
public class ProductResources {

    private IProductDAO dao = new ProductDAO();

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Product> getAll(){
        return null;
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/category/{categoryID}")
    public Map<String, Product> getByCategory(@PathParam("categoryID") int categoryID){
        return null;
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/category/{limit}")
    public Map<String, Product> getByCategoryLimit(@PathParam("limit")int category)
    {
        return null;
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response save(Product product)
    {
    }
}
