package edu.osu.cse5234.business.orderprocessing;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.bind.*;
import javax.persistence.*;
import javax.ws.rs.*;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.*;

@Path("order")
public class OrderProcessingService {

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response submitOrder(String jsonOrder) {
		
		// Use Jsonb to convert the JSON string to object structure
		Jsonb jsonb = JsonbBuilder.create();
        Order submittedOrder = jsonb.fromJson(jsonOrder, Order.class);
		       
        // create entity manager using factory 
	    EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("order-processing");
	    EntityManager entityManager = emfactory.createEntityManager();
		    
        entityManager.getTransaction().begin();
		entityManager.persist(submittedOrder);
		entityManager.getTransaction().commit();
		entityManager.close();
		emfactory.close();
        // nothing to do with submitted order for now
        // just return a hard coded confirmation code
        System.out.println("Order received from customer: \n" + submittedOrder);
        
        // build a JsonObject for credit card payment processing
        JsonObject jsonObj = Json.createObjectBuilder()
               .add("entityName", "MyGolf")
               .add("entityAccountNumber", "123456789")
               .add("creditCardNumber", submittedOrder.getPaymentInfo().getCardNumber())
               .add("cardHolderName", submittedOrder.getPaymentInfo().getCardHolderName())
               .add("expirationDate", submittedOrder.getPaymentInfo().getExpirationDate())
               .add("cvv", submittedOrder.getPaymentInfo().getCvv())
               .build();
        
        // process payment and get confirmation
        System.out.println("Calling bank to process payment ...");
        Client client = ClientBuilder.newClient();
        String paymentConfirm = client.target(PMT_SERVICE_URI)
        .request(MediaType.APPLICATION_JSON)
        	.post(Entity.json(jsonObj), String.class);
        client.close();
        System.out.println("Payment processing complete, confirmation# is: " + paymentConfirm);

        
        return Response.ok("1001").build();
	}

}
