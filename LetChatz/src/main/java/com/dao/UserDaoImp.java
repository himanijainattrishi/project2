package com.dao;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.User;




@Repository
@PersistenceContext
public class UserDaoImp implements UserDao {
	
private SessionFactory sessionFactory;  
	

	
	 
@Autowired
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
		/*Session s=sessionFactory.getCurrentSession();*/
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


	public User getUserById(int id) {
	
		Session s=sessionFactory.openSession();
	    Transaction t=s.beginTransaction();
		   User u=(User)s.get(User.class, id);
		   System.out.println(u.getId());
			t.commit();
			s.close();
			return u;
		/*System.out.println("Hello"+id);
		return (User)sessionFactory.getCurrentSession().get(User.class, new Integer(id));
		*/
		}


	public void updateUser(User user) {
	Session s=sessionFactory.openSession();
		    Transaction t=s.beginTransaction();
		  
		    /*System.out.println("before updation is"+user.getLastName());
		   
		    s.saveOrUpdate(user);
		    System.out.println("after updation is"+user.getLastName());
		    t.commit();*/
		   User u=(User)s.get(User.class, new Integer(user.getId()));
		   u.setName(user.getName());
		   u.setLastName(user.getLastName());
		   u.setCity(user.getCity());
		   u.setMobile(user.getMobile());
		   u.setEmail(user.getEmail());
		   u.setGender(user.getGender());
		   u.setZipcode(user.getZipcode());
		   u.setImage(user.getImage());
		   s.saveOrUpdate(u);
		   s.flush();
		   t.commit();
		    s.close();
		    System.out.println("after comit");
			
			
	}


	public User getUserByName(String name) {
		 Session s=sessionFactory.openSession();
		    Transaction t=s.beginTransaction();
			//Session session=sessionFactory.getCurrentSession();
			User u=(User)s.get(User.class,name);
			System.out.println("user id is" +u.getId());
			System.out.println("user id is" +u.getName());
			return u;
	}

	}


	
		



	
	
	

