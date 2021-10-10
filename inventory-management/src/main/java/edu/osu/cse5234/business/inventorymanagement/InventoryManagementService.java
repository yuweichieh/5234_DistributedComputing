package edu.osu.cse5234.business.inventorymanagement;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import java.util.*;


@Path("inventory")
public class InventoryManagementService {

	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Inventory GetInventory() {
		Inventory currentInventory = new Inventory();
		List<Item> availableItems = new ArrayList<Item>();
		availableItems.add(new Item("001", "yeezy", "1000", "300"));
		availableItems.add(new Item("002", "boots", "100", "250"));
		availableItems.add(new Item("003", "slipper", "2000", "30"));
		availableItems.add(new Item("004", "socks", "1120", "3"));
		currentInventory.setItems(availableItems);
		return currentInventory;
		
	}
	
	
}

