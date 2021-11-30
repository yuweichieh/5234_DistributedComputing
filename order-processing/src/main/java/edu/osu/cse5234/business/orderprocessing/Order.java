package edu.osu.cse5234.business.orderprocessing;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="CUSTOMER_ORDER_LINE_ITEM")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="CUSTOMER_ORDER_ID_FK")
	List<Item> items;
	
	@Column(name="CUSTOMER_NAME")
	String name;
	
	@Column(name="CUSTOMER_EMAIL")
	String email;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="SHIPPING_INFO_ID_FK")
	private ShippingInfo shippingInfo;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="PAYMENT_INFO_ID_FK")
	private PaymentInfo paymentInfo;
	
	@Column(name="STATUS")
	String status;
	
	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public int getTotal_price() {
//		int total_price = 0;
//		for(int i=0; i<this.items.size(); i++) 
//			total_price += Integer.valueOf(this.items.get(i).getPrice()) * Integer.valueOf(this.items.get(i).getAvailableQuantity());
//		return total_price;
		return 100;
	}
}
