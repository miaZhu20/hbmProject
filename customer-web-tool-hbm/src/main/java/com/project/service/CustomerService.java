package com.project.service;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.project.model.Customer;

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
			txn.commit();
			session.close();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean deleteCustomer(Customer customer) {
		try {
			Session session = sessionFactory.openSession();
			Transaction txn = session.beginTransaction();
			
			session.delete(customer);
			txn.commit();
			session.close();
			
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public List<Customer> viewAll(){
		List<Customer> list=null;
		try {
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("from Customer");
			list = query.list();
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}