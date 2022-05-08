package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DeliveryDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	

	
public static List<Delivery> validate(String username, String password) {
		
		ArrayList<Delivery> del = new ArrayList<>();
		
		
		//validate
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from delivery where username = ' "+username+"' and password= '"+password+"'"; 
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int deliveryID = rs.getInt(1);
				String title = rs.getString(2);
				String name = rs.getString(3);
				String add1 = rs.getString(4);
				String add2 = rs.getString(5);
				String postalCode = rs.getString(6);
				String region = rs.getString(7);
				String city = rs.getString(8);
				String country = rs.getString(9);
				
				
				Delivery d = new Delivery(deliveryID, title, name, add1, add2, postalCode, region, city, country);
				del.add(d);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return del;
		
	}
    
    //INSERT DELIVERY DETAILS OF THE CUSTOMER
    public static boolean insertDelivery(String title, String name, String add1, String add2, String postalCode, String region, String city, String country) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		
               con = DBConnect.getConnection();
               stmt = con.createStatement();
			   String sql = "insert into delivery values (0,'"+title+"','"+name+"','"+add1+"','"+add2+"','"+postalCode+"','"+region+"','"+city+"','"+country+"')";
			   int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    
    
    //UPDATE DELIVERY DETAILS OF THE CUSTOMER
    public static boolean updateDelivery(String deliveryID, String name, String add1, String add2, String postalCode, String region, String city, String country) {
    	
    	try {
    		con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update delivery set name='"+name+"',add1='"+add2+"',postalCode='"+postalCode+"',region='"+region+"',city='"+city+"',country='"+country+"'"
            		+ "where deliveryID= '"+deliveryID+"'";
            
            int rs = stmt.executeUpdate(sql);
            
            if(rs > 0) {
            	
    			isSuccess = true;
    			
    		} else {
    			
    			isSuccess = false;
    		}
    	}
   
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	return isSuccess;
    }
    
    
    //RETRIEVE DELIVERY DETAILS BY ID
public static List<Delivery> getDeliveryDetails(String deliveryID) {
    	
    	
    	
    	ArrayList<Delivery> del = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from delivery where deliveryID= ?";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
				String title = rs.getString(2);
				String name = rs.getString(3);
				String add1 = rs.getString(4);
				String add2 = rs.getString(5);
				String postalCode = rs.getString(6);
				String region = rs.getString(7);
				String city = rs.getString(8);
				String country = rs.getString(9);
				
    			
    			Delivery d = new Delivery(id, title, name, add1, add2, postalCode, region, city, country);
    			del.add(d);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return del;	
    }


     //DELETE DELIVERY DETAILS
public static boolean deleteDelivery(String deliveryID) {
	
	int convId = Integer.parseInt(deliveryID);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from delivery where deliveryID='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
    


    //RETRIEVE ALL DELIVERY CUSTOMER RECORDS
public static List<Delivery> getAllDeliveryDetails() {
	System.out.println("ava");
	
	ArrayList<Delivery> del = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from delivery";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String title = rs.getString(2);
			String name = rs.getString(3);
			String add1 = rs.getString(4);
			String add2 = rs.getString(5);
			String postalCode = rs.getString(6);
			String region = rs.getString(7);
			String city = rs.getString(8);
			String country = rs.getString(9);
			
			
			Delivery d = new Delivery(id, title, name, add1, add2, postalCode, region, city, country);
			del.add(d);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return del;	
}

}


