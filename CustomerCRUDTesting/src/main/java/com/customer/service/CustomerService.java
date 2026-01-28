package com.customer.service;

import java.util.List;

import com.customer.domain.Customer;

public interface CustomerService {
	
	public int insertCustomer(Customer customer) throws Exception;
	public List<Customer> CustomerList() throws Exception;
	public Customer serchById(Customer customer) throws Exception;
	public Customer serchByPw(Customer customer) throws Exception;
	public int updateCustomer(Customer customer) throws Exception;
	public int updateCustomerPw(Customer customer) throws Exception;
	public int deleteCustomer(Customer customer) throws Exception;
	public Customer customerLogin(Customer customer) throws Exception;
}
