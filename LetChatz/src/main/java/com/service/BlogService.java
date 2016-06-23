package com.service;

import java.util.List;

import org.cometd.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BlogDaoImp;
import com.model.Blog;

@Service
@Transactional
public class BlogService {
	BlogDaoImp blog;

	public void setBlog(BlogDaoImp blog) {
		this.blog = blog;
	}

	@Autowired
	public BlogService(BlogDaoImp blog) {
		super();
		this.blog = blog;
	}

	public BlogDaoImp getBlog() {
		return blog;
	}
	public void addBlog(Blog blog1)
	{
		blog.addBlog(blog1);
		
	}
	public List<Blog> getAllBlog()
	{
		return blog.getAllBlog();
	}

	
	

}
