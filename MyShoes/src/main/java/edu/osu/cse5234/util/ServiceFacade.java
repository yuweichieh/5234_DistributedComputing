package edu.osu.cse5234.util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.json.bind.Jsonb;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.json.bind.*;

import edu.osu.cse5234.model.Item;
import edu.osu.cse5234.model.Order;

public class ServiceFacade {
	
	private static String INV_MGMT_SERVICE_URI = "http://localhost:9080/inventory-management/inventory";
	
	private static String ORDER_PROCESS_SERVICE_URI = "http://localhost:9080/order-processing/order";
	
	public static List<Item> getAvailableItems() {
		
		List<Item> availableItems = new ArrayList<Item>();
		Client client = ClientBuilder.newClient();
		WebTarget webTarget = client.target(INV_MGMT_SERVICE_URI);
		Invocation.Builder builder = webTarget.request(javax.ws.rs.core.MediaType.APPLICATION_JSON);
		JsonObject responseJsonObj = builder.get(JsonObject.class);
		
		
		Iterator<JsonValue> it = responseJsonObj.getJsonArray("items").iterator();
		while (it.hasNext()) {
			JsonValue value = it.next();
			Item newItem = new Item();
			newItem.setName(value.asJsonObject().getString("name"));
			newItem.setPrice(value.asJsonObject().getString("price"));
			newItem.setQuantity(value.asJsonObject().getString("availableQuantity"));
			availableItems.add(newItem);
		}
		client.close();
		return availableItems;
	}
	
	public static void constructJSON(Order order) {
		
		Jsonb jsonb = JsonbBuilder.create();
		jsonb.toJson(order);
		
		Client client = ClientBuilder.newClient();
		WebTarget webTarget = client.target(ORDER_PROCESS_SERVICE_URI);
		Invocation.Builder builder = webTarget.request(javax.ws.rs.core.MediaType.APPLICATION_JSON);
		builder.post(Entity.json(jsonb));
		
		client.close();
	}
	
}