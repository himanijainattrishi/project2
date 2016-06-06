package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDaoImp;
import com.model.User;





@Service
@Transactional
public class UserService {
	UserDaoImp user;

	@Autowired
	public UserService(UserDaoImp user) 
	{
      this.user=user;
		// TODO Auto-generated constructor stub
	}

	public void setUser(UserDaoImp user) {
		this.user = user;
	}
	
	@Transactional
	public void addUser(User u) {  
		System.out.println("service");
		 user.addUser(u);
		 } 
	@Transactional
	public Boolean logincheck(String name,String password)
	{
		return user.validUser(name, password);
	}
	
	
	public User  getUserById(int id)
	{
	return user.getUserById(id);
	
	}


}
