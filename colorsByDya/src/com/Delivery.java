package com;

public class Delivery {
	
	private int deliveryID;
	private String title;
	private String name;
	private String add1;
	private String add2;
	private String postalCode;
	private String region;
	private String city;
	private String country;
	
	
	
	
	public Delivery(int deliveryID, String title, String name, String add1, String add2, String postalCode,
			String region, String city, String country) {
		
		this.deliveryID = deliveryID;
		this.title = title;
		this.name = name;
		this.add1 = add1;
		this.add2 = add2;
		this.postalCode = postalCode;
		this.region = region;
		this.city = city;
		this.country = country;
		
	}


	public int getDeliveryID() {
		return deliveryID;
	}


	public String getTitle() {
		return title;
	}


	public String getName() {
		return name;
	}


	public String getAdd1() {
		return add1;
	}


	public String getAdd2() {
		return add2;
	}


	public String getPostalCode() {
		return postalCode;
	}


	public String getRegion() {
		return region;
	}


	public String getCity() {
		return city;
	}


	public String getCountry() {
		return country;
	}


	

		

}
