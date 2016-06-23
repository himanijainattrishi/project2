package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDaoImp;
import com.model.User;





@Service
@Transactional
@EnableTransactionManagement
public class UserService {
	
	UserDaoImp user;

	
	

	public UserDaoImp getUser() {
		return user;
	}

	@Autowired
	public UserService(UserDaoImp user) 
	{
      this.user=user;
		// TODO Auto-generated constructor stub
	}

	public void setUser(UserDaoImp user) {
		this.user = user;
	}
	

	public void addUser(User u) {  
		System.out.println("service");
		 user.addUser(u);
		 } 
	
	public Boolean logincheck(String name,String password)
	{
		return user.validUser(name, password);
	}
	
	public User  getUserById(int id)
	{
		System.out.println(id);
	return user.getUserById(id);
	
	}
	public User  getUserByName(String name)
	{
		System.out.println("service method" +name);
	return user.getUserByName(name);
	
	}
	public void updateUser(User u)
	{
		System.out.println("userservice method is" +u.getId());
		user.updateUser(u);
		
	}
public List<User> getAllUsers() {
		
		return user.getAllUsers();
	}

public void removeproduct(int id)
{
	System.out.println("remove service start");
	this.user.removeproduct(id);
	System.out.println("remove service end");
}


}
