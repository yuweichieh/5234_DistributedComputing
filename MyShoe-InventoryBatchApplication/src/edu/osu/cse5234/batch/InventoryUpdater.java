package edu.osu.cse5234.batch;

import java.sql.*;
import java.util.*;

public class InventoryUpdater {
	public static void main(String[] args) {
		System.out.println("Starting Inventory Update ...");
		try {
			Connection conn = createConnection();
			Collection<Integer> newOrderIds = getNewOrders(conn);
			Map<Integer, Integer> orderedItems = getOrderedLineItems(newOrderIds, conn);
			udpateInventory(orderedItems, conn);
			udpateOrderStatus(newOrderIds, conn);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private static Connection createConnection() throws SQLException, ClassNotFoundException {
		Class.forName("org.h2.Driver");
		Connection conn = DriverManager.getConnection("jdbc:h2:/Users/brosheng/5234_DistributedComputing/h2/MyShoesInventoryDB;AUTO_SERVER=TRUE", "sa", "");
		return conn;
	}
	private static Collection<Integer> getNewOrders(Connection conn) throws SQLException {
		Collection<Integer> orderIds = new ArrayList<Integer>();
		ResultSet rset = conn.createStatement().executeQuery(
		                     "select ID from CUSTOMER_ORDER where STATUS = 'New'");
		while (rset.next()) {
			orderIds.add(new Integer(rset.getInt("ID")));
		}
		return orderIds;
	}
	private static Map<Integer, Integer> getOrderedLineItems(Collection<Integer> newOrderIds,
            Connection conn)  throws SQLException {
		//TODO Auto-generated method stub
		//This method returns a map of two integers. The first Integer is item ID, and 
		             // the second is cumulative requested quantity across all new orders
		Map<Integer, Integer> m = new HashMap<Integer, Integer>();
		Iterator<Integer> iterator = newOrderIds.iterator();

        // while loop
        while (iterator.hasNext()) {
    		ResultSet rset = conn.createStatement().executeQuery(
                    "select ITEM_NUMBER, QUANTITY from CUSTOMER_ORDER_LINE_ITEM where ID = "+iterator.next().toString());
    		while (rset.next()) {
    			if(m.containsKey(rset.getInt("ITEM_NUMBER")))
    				m.put(rset.getInt("ITEM_NUMBER"), m.get(rset.getInt("ITEM_NUMBER")) + rset.getInt("QUANTITY"));
    			else
    				m.put(rset.getInt("ITEM_NUMBER"), rset.getInt("QUANTITY"));
    		}
        }
		return m;
	}
	private static void udpateInventory(Map<Integer, Integer> orderedItems, 
	            Connection conn) throws SQLException {
		//TODO Auto-generated method stub
        for (Map.Entry<Integer,Integer> entry : orderedItems.entrySet()){
        	String ItemID = entry.getKey().toString();
        	String quantity = entry.getValue().toString();
    		conn.createStatement().executeQuery(
    				"UPDATE ITEM "
    				+ "SET AVAILABLE_QUANTITY = AVAILABLE_QUANTITY + " + quantity
    				+ "WHERE ID = "+ ItemID +";");
        }
	}
	private static void udpateOrderStatus(Collection<Integer> newOrderIds, 
	            Connection conn) throws SQLException {
		//TODO Auto-generated method stub
		Iterator<Integer> iterator = newOrderIds.iterator();

        // while loop
        while (iterator.hasNext()) {
        	conn.createStatement().executeQuery(
        			"update CUSTOMER_ORDER"
        			+ "SET STATUS = 'Done'"
        			+ "WHERE ID = "+iterator.next());
        }
	}	
}

