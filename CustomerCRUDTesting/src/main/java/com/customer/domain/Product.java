package com.customer.domain;

import lombok.Data;

@Data
public class Product {
	
	private int no;
	private String name;
	private String category;
	private int price;
	private double salePct;
	private String image;
	
}
