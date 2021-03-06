package edu.osu.cse5234.model;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class Item {
	String name, price, quantity;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQuantity() {
		return (quantity == "")?"0":quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
}
