package com.Infinite.inventoryproject;


import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class CustomerDAO{

	SessionFactory sessionFactory;
	
	
	

	public String addCustomer(Customer customer){
	sessionFactory = SessionHelper.getConnection();
	Session session = sessionFactory.openSession();
	int Customerid=generateCustomerid();
	Transaction transaction = session.beginTransaction();
		customer.setCustomerid(Customerid);
	session.save(customer);
	transaction.commit();
		session.close();
	return " Added Successsfully...";
}
	
	
	private int generateCustomerid() {
		return 0;
	}

	 public int authenticate(String user,String password){
	        sessionFactory = SessionHelper.getConnection();
	        Session session = sessionFactory.openSession();
	        Criteria criteria = session.createCriteria(Customer.class);
	        criteria.add(Restrictions.eq("userName", user));
	        criteria.add(Restrictions.eq("passCode", password));
	        List<Customer>cuList = criteria.list();
	        return cuList.size();
	        
	            }
	
	public String updateCustomer(Customer customer){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(customer);
		transaction.commit();
		
		return "Customer updated Successsfully...";
	
		
	}
	public Customer searchCustomer(int customerid) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession(); 
		Criteria cr = session.createCriteria(Customer.class);
		cr.add(Restrictions.eq("customerid", customerid));
		List<Customer> customerList = cr.list();
		return customerList.get(0);
	}
	public List<Customer> showCustomer( ) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Customer.class);
		List<Customer> customerList = cr.list();		
		return customerList;
	}

}