package com.blogspot.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.blogspot.entities.UserTbl;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory ;
	
	public void insertUser(UserTbl userTbl) {
			Session session = sessionFactory.getCurrentSession();
			session.save(userTbl);
		}
	
	public UserTbl getUserDetails(int userid) {
		Session session = sessionFactory.getCurrentSession();
		UserTbl userDetails = (UserTbl) session.get(UserTbl.class, userid);
		return userDetails;
	}
	
	public void updateUserInfo(UserTbl user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	
	}
	public void deleteUser(int userid) {
		Session session = sessionFactory.getCurrentSession();
		UserTbl userDetails = (UserTbl) session.get(UserTbl.class, userid);
		session.delete(userDetails);
			
	}
	
	public List<UserTbl> getAllUsers() {
		Session session = sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(UserTbl.class);
		cr.addOrder(Order.desc("userid"));
		return cr.list();
	}
}
