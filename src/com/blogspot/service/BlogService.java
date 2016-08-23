package com.blogspot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blogspot.dao.BlogDao;
import com.blogspot.entities.BlogTbl;

@Transactional
@Service
public class BlogService { 
	
	@Autowired
	private BlogDao blogDao;
	
	public List<BlogTbl> displayAllBlogs() {
		return blogDao.getAllBlogs();
	}

}
