package com.customer.domain;

import lombok.Data;

@Data
public class Customer {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private int cash;
}
