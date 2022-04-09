package com.fashion.ws;

import com.fashion.dao.IAddressDAO;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/address")
public class AddressResources {

    @Inject
    private IAddressDAO dao;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProvinces(){
        return Response.status(Response.Status.OK).entity(dao.getProvinces()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{province}")
    public Response getDistrictsByProvince(@PathParam("province") String province){
        return Response.status(Response.Status.OK).entity(dao.getDistrictsByProvince(province)).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{province}/{district}")
    public Response getWardsByDistrict(@PathParam("province") String province, @PathParam("district") String district){
        return Response.status(Response.Status.OK).entity(dao.getWardsByDistrict(province, district)).build();
    }
}