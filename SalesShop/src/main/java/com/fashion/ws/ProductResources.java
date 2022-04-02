package com.fashion.ws;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/product")
public class ProductResources {
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String sayHello(){
        return "Welcome to our project";
    }
}
