package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.User_Roles;

@Repository
public class User_RolesDaoImp  implements User_RolesDao{
@Autowired
	private SessionFactory sessionFactory;


@Autowired
public User_RolesDaoImp(SessionFactory sf) 
{
	super();
	this.sessionFactory = sf;
	// TODO Auto-generated constructor stub
}
 
	


public void setsessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}


	public void addRole(User_Roles userrole) {
		sessionFactory.getCurrentSession().save(userrole);
		
		
	}

}
