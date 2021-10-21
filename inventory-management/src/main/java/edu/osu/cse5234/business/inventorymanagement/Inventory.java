package edu.osu.cse5234.business.inventorymanagement;
import java.util.*;


public class Inventory {
	
	List<Item> Items = new ArrayList<Item>();

	public List<Item> getItems() {
		return Items;
	}

	public void setItems(List<Item> items) {
		Items = items;
	}

	public Inventory() {
		super();
	}

	public Inventory(List<Item> items) {
		super();
		Items = items;
	}

	
}
