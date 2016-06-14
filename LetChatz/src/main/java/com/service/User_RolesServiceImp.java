package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.User_RolesDao;
import com.dao.User_RolesDaoImp;
import com.model.User_Roles;

@Service
@Transactional
public class User_RolesServiceImp {

	User_RolesDaoImp dao;
	
	
	public User_RolesDaoImp getDao() {
		return dao;
	}
	public void setDao(User_RolesDaoImp dao) {
		this.dao = dao;
	}
	@Autowired
	User_RolesServiceImp(User_RolesDaoImp dao)
	{
		this.dao=dao;
	}
	public void addRole(User_Roles userrole) {
		dao.addRole(userrole);
		
		
	}

}
