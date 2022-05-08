package com.fashion.ws;

import com.fashion.dao.ICategoryDAO;
import com.fashion.model.Category;
import com.fashion.model.ResponseObject;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/category")
public class CategoryResources {

    @Inject
    private ICategoryDAO categoryDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll()
    {
        try{
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "OK",
                    "success",
                    categoryDAO.getAll()
            )).build();
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(new ResponseObject(
                    "FAIL",
                    e.getMessage(),
                    ""
            )).build();
        }
    }
    
    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response findOne(@PathParam("id") int ID)
    {
        try{
            Category category = categoryDAO.findOne(ID);
            if(category != null)
            {
                return Response.status(Response.Status.OK).entity(new ResponseObject(
                        "OK",
                        "found successfully",
                        category
                )).build();
            }
            return Response.status(Response.Status.OK).entity(new ResponseObject(
                    "OK",
                    "can't not find with id = " + ID,
                    ""
            )).build();
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(new ResponseObject(
                    "fail",
                    e.getMessage(),
                    ""
            )).build();
        }
    }
}
