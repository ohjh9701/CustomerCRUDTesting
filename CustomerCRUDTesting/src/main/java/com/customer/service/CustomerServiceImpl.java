package com.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.customer.domain.Customer;
import com.customer.repository.CustomerDAO;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	public int insertCustomer(Customer customer) throws Exception {
		int count = customerDAO.insertCustomer(customer);
		return count;
	}

	@Override
	public List<Customer> CustomerList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer serchById(Customer customer) throws Exception {
		Customer c = customerDAO.serchById(customer);
		return c;
	}

	@Override
	public Customer serchByPw(Customer customer) throws Exception {
		Customer c = customerDAO.serchByPw(customer);
		return c;
	}

	@Override
	public int updateCustomer(Customer customer) throws Exception {
		int count = customerDAO.updateCustomer(customer);
		return count;
	}

	@Override
	public int updateCustomerPw(Customer customer) throws Exception {
		int count = customerDAO.updateCustomerPw(customer);
		return count;
	}

	@Override
	public int deleteCustomer(Customer customer) throws Exception {
		int count = customerDAO.deleteCustomer(customer);
		return count;
	}

	@Override
	public Customer customerLogin(Customer customer) throws Exception {
		Customer c = customerDAO.customerLogin(customer);
		return c;
	}

}
