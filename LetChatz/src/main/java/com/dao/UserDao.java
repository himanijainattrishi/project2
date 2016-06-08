package com.dao;

import java.util.List;

import com.model.User;



public interface UserDao {
	public String addUser(User user);
	public Boolean validUser(int id,String password);
	public User getUserById(int id);
	public void updateUser(User user);

}