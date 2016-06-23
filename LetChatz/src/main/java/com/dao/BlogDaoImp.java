package com.dao;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Blog;

@Repository
@PersistenceContext
public class BlogDaoImp implements BlogDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	public BlogDaoImp(SessionFactory sf) {
		super();
		this.sessionFactory=sf;
		// TODO Auto-generated constructor stub
	}

	
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addBlog(Blog b) {
		Session s=sessionFactory.openSession();
	Transaction t=s.beginTransaction();
	
		s.saveOrUpdate(b);
		t.commit();
		s.close();
		
		
		
	}

	public List<Blog >getAllBlog() {
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		
				
		
		return s.createQuery("from Blog").list();
	}




	

}
