package com.dao;

import java.util.List;

import com.model.Contact;
import com.model.User;



public interface UserDao {
	public String addUser(User user);
	public String addCustomer(Contact c);
	public Boolean validUser(String name,String password);
	public User getUserById(int id);
	public void updateUser(User user);
	public User getUserByName(String name);
	public List<User> getAllUsers();
	public List<Contact> getAllCustomer();
	public 	void removeproduct(int productId);
	public void removecontact(int productId);
}
