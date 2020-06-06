package com.java.ecommerce.dao;

import org.hibernate.*;

import com.java.ecommerce.entitys.User;

public class UserDao {
	
	private SessionFactory factory;
	public UserDao(SessionFactory factory) {
		
		this.factory=factory;
		
	}
	
	public User getUserByEmailAndPassword(String email,String Password) {
		
		User user = null;
		try {
			String query = "from User where userEmail =: e and userPassword =: p";
			Session session = this.factory.openSession();
            Query q = session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", Password);
			user = (User) q.uniqueResult();
			session.close();
			
			
		}catch(Exception e) {
		e.printStackTrace();	
			
		}
		return user;
	}
	

}
