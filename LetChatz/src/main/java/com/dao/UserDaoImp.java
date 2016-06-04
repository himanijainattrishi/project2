package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.User;




@Repository
public class UserDaoImp implements UserDao {

private SessionFactory sessionFactory;  
	
	@Autowired
	public UserDaoImp(SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
		// TODO Auto-generated constructor stub
	}
	 
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	

	public String addUser(User user) {
		System.out.println("USerDaoImp");
		/*System.out.println("user add");
		sessionFactory.getCurrentSession().save(user); 
		System.out.println("user add1");
		return "Register";*/
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		System.out.println("Transcation");
		s.saveOrUpdate(user);
		System.out.println("save");
		t.commit();
		s.close();
		return "Register";
		
	}


	public Boolean validUser(String name, String password) {
		boolean check=false;
		
	    Session s=sessionFactory.openSession();
	    Transaction t=s.beginTransaction();
	    Query q=s.createQuery("from User where name=? and password=?");
	   
	    q.setString(0,name);
	    q.setString(1, password);
	    List list = q.list();
	    if(list!=null && list.size()>0)
	    {
	    return check=true;
	    }
	    return check;
	
	}


	
		
	}


	
	
	

