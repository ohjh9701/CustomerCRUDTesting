package com.customer.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.customer.domain.Customer;

@Repository
public class CustomerDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertCustomer(Customer customer) {
		String query = "INSERT INTO CUSTOMER VALUES(?, ?, ?, ?, ?, ?)";
		int count = jdbcTemplate.update(query, customer.getId(), customer.getPassword(), customer.getName(), customer.getPhone(),
				customer.getEmail(), customer.getCash());
		return count;
	}

	public Customer serchById(Customer customer) {
		String query = "SELECT * FROM CUSTOMER WHERE NAME = ? AND EMAIL = ?";
		
		List<Customer> customerList = jdbcTemplate.query(query, new RowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				customer.setId(rs.getString("ID"));
				customer.setPassword(rs.getString("PASSWORD"));
				customer.setName(rs.getString("NAME"));
				customer.setPhone(rs.getString("PHONE"));
				customer.setEmail(rs.getString("EMAIL"));
				customer.setCash(rs.getInt("CASH"));
				return customer;
			}
		}, customer.getName(), customer.getEmail());
		
		return customerList.isEmpty() ? null : customerList.get(0);
	}

	public Customer serchByPw(Customer customer) {
		String query = "SELECT * FROM CUSTOMER WHERE ID = ? AND EMAIL = ?";
		
		List<Customer> customerList = jdbcTemplate.query(query, new RowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				customer.setId(rs.getString("ID"));
				customer.setPassword(rs.getString("PASSWORD"));
				customer.setName(rs.getString("NAME"));
				customer.setPhone(rs.getString("PHONE"));
				customer.setEmail(rs.getString("EMAIL"));
				customer.setCash(rs.getInt("CASH"));
				return customer;
			}
		}, customer.getId(), customer.getEmail());
		
		return customerList.isEmpty() ? null : customerList.get(0);
	}

	public int updateCustomerPw(Customer customer) {
		String query = "UPDATE CUSTOMER SET PASSWORD = ? WHERE ID = ?";
		int count = jdbcTemplate.update(query, customer.getPassword(), customer.getId());
		return count;
	}

	public Customer customerLogin(Customer customer) {
String query = "SELECT * FROM CUSTOMER WHERE ID = ? AND PASSWORD = ?";
		
		List<Customer> customerList = jdbcTemplate.query(query, new RowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				customer.setId(rs.getString("ID"));
				customer.setPassword(rs.getString("PASSWORD"));
				customer.setName(rs.getString("NAME"));
				customer.setPhone(rs.getString("PHONE"));
				customer.setEmail(rs.getString("EMAIL"));
				customer.setCash(rs.getInt("CASH"));
				return customer;
			}
		}, customer.getId(), customer.getPassword());
		
		return customerList.isEmpty() ? null : customerList.get(0);
	}

	public int updateCustomer(Customer customer) {
		String query = "UPDATE CUSTOMER SET PASSWORD = ?, NAME = ?, PHONE = ?, EMAIL = ? WHERE ID = ?";
		int count = jdbcTemplate.update(query, customer.getPassword(), customer.getName(), customer.getPhone(), customer.getEmail(), customer.getId());
		return count;
	}

	public int deleteCustomer(Customer customer) {
		String query = "DELETE FROM CUSTOMER WHERE ID = ?";
		int count = jdbcTemplate.update(query, customer.getId());
		return count;
	}

}
