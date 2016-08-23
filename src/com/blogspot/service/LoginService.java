package com.blogspot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blogspot.dao.UserDao;
import com.blogspot.entities.UserTbl;
import com.blogspot.model.UserModel;

@Service
public class LoginService {
	
	@Autowired
	private UserDao userDao;
	
	@Transactional
	public boolean validateuser(UserModel userInfo){
		System.out.println("In login Service...");
		System.out.println(userInfo.getUserId());
		UserTbl userDetailsFromDb = userDao.getUserDetails(userInfo.getUserId());
		System.out.println(userDetailsFromDb);
		if(userInfo.getPassword().equalsIgnoreCase(userDetailsFromDb.getPassword()))
			return true;
		else
			return false;
	}
}
