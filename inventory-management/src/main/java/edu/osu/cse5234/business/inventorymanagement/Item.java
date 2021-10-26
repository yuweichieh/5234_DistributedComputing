package edu.osu.cse5234.business.inventorymanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ITEM")
public class Item {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="NAME")
	String name;
	
	@Column(name="AVAILABLE_QUANTITY")
	String availableQuantity;
	
	@Column(name="UNIT_PRICE")
	String price;
	
	public int getId() {
		return this.id;
	}
	public Item(int id, String name, String availableQuantity, String price) {
		super();
		this.id = id;
		this.name = name;
		this.availableQuantity = availableQuantity;
		this.price = price;
	}
	public void setId(int id) {
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
		return (availableQuantity == "")?"0":availableQuantity;
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
