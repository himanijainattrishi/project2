package com.dao;

import java.util.List;

import com.model.Blog;

public interface BlogDao {
	public void addBlog(Blog b);
	public List getAllBlog();

}
