package com.dao;

import java.util.List;

import com.model.User;



public interface UserDao {
	public String addUser(User user);
	public Boolean validUser(String name,String password);
	public User getUserById(int id);
	public void updateUser(User user);
	public User getUserByName(String name);
	public List<User> getAllUsers();
	
	public 	void removeproduct(int productId);
}
