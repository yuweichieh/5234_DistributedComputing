package edu.osu.cse5234.business.orderprocessing;

import javax.json.bind.*;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

@Path("order")
public class OrderProcessingService {

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response submitOrder(String jsonOrder) {
		
		// Use Jsonb to convert the JSON string to object structure
		Jsonb jsonb = JsonbBuilder.create();
        Order submittedOrder = jsonb.fromJson(jsonOrder, Order.class);
       
        // nothing to do with submitted order for now
        // just return a hard coded confirmation code
        System.out.println("Order received from customer: \n" + submittedOrder);
        
        return Response.ok("1001").build();
	}

}
