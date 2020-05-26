package com.java.ecommerce.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.sun.security.auth.login.ConfigFile;

public class FactoryProvider {
	private static SessionFactory factory;

	public static SessionFactory getFactory() {
		try {
			if (factory == null) {
				factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("factory object not create");
		}
		return factory;

	}

}
