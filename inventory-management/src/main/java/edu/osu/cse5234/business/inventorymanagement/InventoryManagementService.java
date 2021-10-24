package edu.osu.cse5234.business.inventorymanagement;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.PathParam;

import java.util.*;


@Path("inventory")
public class InventoryManagementService {

	public static final String MY_QUERY= "Select i from Item i";
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Inventory GetInventory() {
		Inventory currentInventory = new Inventory();
	    EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("inventory-management");
	    EntityManager entityManager = emfactory.createEntityManager();
	    
	    List<Item> availableItems = entityManager.createQuery(MY_QUERY, Item.class).getResultList();
	    currentInventory.setItems(availableItems);
	    entityManager.close();
	    emfactory.close();
	    return currentInventory;
		
	}
	
	@GET 
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/items/{id}") 
	public Inventory getItem(@PathParam("id") String id) { 
		System.out.println(id);
		String s1 = "001";
		String s2 = "002";
		String s3 = "003";
		String s4 = "004";
		Inventory currentInventory = new Inventory();
		List<Item> availableItems = new ArrayList<Item>();
		
		if (id.equals(s1)) {
			availableItems.add(new Item("001", "yeezy", "1000", "300"));
		}
		else if ( id.equals(s2)) {
			availableItems.add(new Item("002", "boots", "100", "250"));
		}
		else if ( id.equals(s3)) {
			availableItems.add(new Item("003", "slipper", "2000", "30"));
		}
		else if ( id.equals(s4)) {
			availableItems.add(new Item("004", "socks", "1120", "3"));
		}
		currentInventory.setItems(availableItems);
		return currentInventory;
	}
	
	@GET 
	@Produces(MediaType.APPLICATION_JSON)
	@Path("items")
	public Inventory getItem_Name(@QueryParam("name") String name) {
		System.out.println(name);
		String s1 = "yeezy";
		String s2 = "boots";
		String s3 = "slipper";
		String s4 = "socks";
		Inventory currentInventory = new Inventory();
		List<Item> availableItems = new ArrayList<Item>();
		
		
		if (name.equals(s1)) {
			availableItems.add(new Item("001", "yeezy", "1000", "300"));
		}
		else if ( name.equals(s2)) {
			availableItems.add(new Item("002", "boots", "100", "250"));
		}
		else if ( name.equals(s3)) {
			availableItems.add(new Item("003", "slipper", "2000", "30"));
		}
		else if ( name.equals(s4)) {
			availableItems.add(new Item("004", "socks", "1120", "3"));
		}
	
		currentInventory.setItems(availableItems);
		return currentInventory;
		
	}
	
	
}

