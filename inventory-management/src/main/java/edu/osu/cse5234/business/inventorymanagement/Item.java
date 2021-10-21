package edu.osu.cse5234.business.inventorymanagement;

public class Item {
	String id;
	String name;
	String availableQuantity;
	String price;
	public String getId() {
		return id;
	}
	public Item(String id, String name, String availableQuantity, String price) {
		super();
		this.id = id;
		this.name = name;
		this.availableQuantity = availableQuantity;
		this.price = price;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public Item() {
		super();
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAvailableQuantity() {
		return availableQuantity;
	}
	public void setAvailableQuantity(String availableQuantity) {
		this.availableQuantity = availableQuantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
