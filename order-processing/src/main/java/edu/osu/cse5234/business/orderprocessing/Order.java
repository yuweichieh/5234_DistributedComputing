package edu.osu.cse5234.business.orderprocessing;

import java.util.List;

public class Order {
List<Item> items;
	
	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public int getTotal_price() {
		int total_price = 0;
		for(int i=0; i<this.items.size(); i++) 
			total_price += Integer.valueOf(this.items.get(i).getPrice()) * Integer.valueOf(this.items.get(i).getQuantity());
		return total_price;
	}
}
