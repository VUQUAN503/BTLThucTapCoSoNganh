package com.fashion.ws;

import com.fashion.dao.ICartDAO;
import com.fashion.model.CartItem;
import com.fashion.model.ResponseObject;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;


@Path("/cart")
public class CartAPI {

    @Inject
    private ICartDAO cartDAO;

    @GET
    @Path("/{customerID}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCartID(@PathParam("customerID") int customerID)
    {
        int cartID = cartDAO.getCartID(customerID);
        return Response.status(Response.Status.OK).entity(
                new ResponseObject(
                        "OK",
                        "successfully",
                        cartID
                )
        ).build();
    }

    @GET
    @Path("/{customerID}/{orderID}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response loadCart(@PathParam("customerID") int customerID, @PathParam("orderID") int orderID)
    {
        try {
            if(cartDAO.isExistsCart(orderID, customerID))
            {
                List<CartItem> cart = cartDAO.loadCartOfCustomer(orderID, customerID);
                if(cart.size() > 0)
                    return Response.status(Response.Status.OK).entity(
                            new ResponseObject(
                                "OK",
                                "successfully",
                                cart
                            )
                    ).build();
            }
            return Response.status(Response.Status.OK).entity(
                    new ResponseObject(
                            "OK",
                            "successfully",
                            "[]"
                    )
            ).build();
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(
                    new ResponseObject(
                            "FAIL",
                            e.getMessage(),
                            ""
                    )
            ).build();
        }
    }


    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{customerID}")
    public Response saveCart(CartItem cartItem, @PathParam("customerID") int customerID)
    {
        List<CartItem> items = null;
        try{
            int cartID = cartDAO.getCartID(customerID);
            cartItem.setCartID(cartID);
            if(!cartDAO.isExistsCart(cartItem.getCartID(), customerID))
            {
                cartDAO.saveCart(customerID);
                cartDAO.saveCartItem(cartItem);
            }else{
                items = cartDAO.loadCartOfCustomer(cartItem.getCartID(), customerID);
                CartItem item = items.stream().filter(c -> c.getProductID() == cartItem.getProductID()
                                                        && cartItem.getColor().equals(c.getColor())
                                                        && cartItem.getSize().equals(c.getSize()))
                                              .findFirst().orElse(null);
                if(item == null)
                {
                    items.add(cartItem);
                    cartDAO.saveCartItem(cartItem.getCartID(), cartItem.getProductID(), cartItem.getColor(), cartItem.getSize(), cartItem.getImage(), cartItem.getAmount(), cartItem.getPrice());
                }
                else {
                    cartItem.setAmount(cartItem.getAmount() + item.getAmount());
                    cartDAO.updateCart(cartItem);
                }
            }
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(
                    new ResponseObject(
                            "FAIL",
                            e.getMessage(),
                            ""
                    )
            ).build();
        }
        return Response.status(Response.Status.CREATED).entity(
                new ResponseObject(
                        "OK",
                        "created successfully",
                        items
                )
        ).build();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/update")
    public Response update(CartItem cartItem)
    {
        try{
            if(cartDAO.updateCart(cartItem))
                return Response.status(Response.Status.OK).entity(
                        new ResponseObject(
                            "OK",
                            "updated successfully",
                            ""
                        )
                ).build();
            return null;
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(
                    new ResponseObject(
                            "FAIL",
                            e.getMessage(),
                            ""
                    )
            ).build();
        }
    }

    @DELETE
    @Path("/{orderID}/{productID}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response delete(@PathParam("orderID") int orderID, @PathParam("productID") int productID)
    {
        try{
            cartDAO.deleteCartItem(orderID, productID);
        }catch (Exception e)
        {
            e.printStackTrace();
            return Response.status(Response.Status.NOT_ACCEPTABLE).entity(
                    new ResponseObject(
                            "FAIL",
                            e.getMessage(),
                            ""
                    )
            ).build();
        }
        return Response.status(Response.Status.OK).entity(
                new ResponseObject(
                        "OK",
                        "deleted successfully",
                        ""
                )
        ).build();
    }
}
