package com.blogspot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blogspot.dao.UserDao;
import com.blogspot.model.UserTbl;

@Service
public class LoginService {
	
	@Autowired
	private UserDao userDao;
	
	@Transactional
	public boolean validateuser(UserTbl userInfo){
		UserTbl userDetailsFromDb = userDao.getUserDetails(userInfo.getUserid());
		if(userDetailsFromDb !=null && userInfo.getPassword() == userDetailsFromDb.getPassword())
			return true;
		else
			return false;
	}
}
