package com.demo.service;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.model.Customer;

public class CustomerService {
	SessionFactory sessionFactory;

	public CustomerService() {
		try {
			sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		} catch (HibernateException he) {
			he.printStackTrace();
		}
	}

	public boolean insertCustomer(Customer customer) {
		try {
			Session session = sessionFactory.openSession();
			Transaction txn = session.beginTransaction();

			session.persist(customer);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
