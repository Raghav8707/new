package com.Infinite.inventoryproject;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;


public class VendorDAO {
	SessionFactory sessionFactory;
	public int authenticate(String user,String password){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Vendor.class);
		criteria.add(Restrictions.eq("username", user));
		criteria.add(Restrictions.eq("password", password));
		List<Vendor>listvendor = criteria.list();
	    return listvendor.size();
		
			}

}
