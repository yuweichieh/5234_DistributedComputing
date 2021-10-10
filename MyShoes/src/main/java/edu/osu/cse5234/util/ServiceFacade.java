package edu.osu.cse5234.util;
import java.util.*;

import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;

import edu.osu.cse5234.model.Item;

public class ServiceFacade {
	private static String INV_MGMT_SERVICE_URI = "http://localhost:9080/inventory-management/inventory";
	
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
	
	public void constructJSON() {
		
		
	}
	
}