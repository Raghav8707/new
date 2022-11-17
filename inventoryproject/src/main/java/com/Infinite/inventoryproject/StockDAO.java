package com.Infinite.inventoryproject;


import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class StockDAO {
	
	SessionFactory sessionFactory;
	//generate Stock id
	
	public String GenerateStockid() {	
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(StockDetails.class);
		List<StockDetails> stockList = cr.list();
		session.close();
		if( stockList.size()==0) {
			return "S001";
	
		}
		else {
			String id = stockList.get(stockList.size()-1).getStockid();
			int id1 = Integer.parseInt(id.substring(1));
			id1++;
			String id2 = String.format("S%03d", id1);
     		return id2;		
		}	
		
	}
	
	
	//Add StockDetails
	
	
	public String addstockDetails(StockDetails stockDetails) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		String stockid=GenerateStockid();
		stockDetails.setStockid(stockid);
		Criteria cr = session.createCriteria(StockDetails.class);
		org.hibernate.Transaction tran =  session.beginTransaction();
		session.save(stockDetails);
		tran.commit();
		return "Stock details Added";
	}
	
		public List<StockDetails> ShowStock() {
			sessionFactory = SessionHelper.getConnection();
			Session session = sessionFactory.openSession();
			Criteria cr = session.createCriteria(StockDetails.class);
			List<StockDetails> stockList = cr.list();
			return stockList;
			
		}
		
		public StockDetails searchStock(String stockid) {
			sessionFactory = SessionHelper.getConnection();
			Session session = sessionFactory.openSession(); 
			Criteria cr = session.createCriteria(StockDetails.class);
			cr.add(Restrictions.eq("stockid", stockid));
			List<StockDetails> stockList = cr.list();
			System.out.println("Size  " + stockList.size());
			return stockList.get(0);
		}
//		public StockDetails SearchStock(String stockid ) {
//			sessionFactory  = SessionHelper.getConnection();
//      	    Session session=sessionFactory.openSession();  
//      	  Query query = session.createQuery("from StockDetails where stockid = :stockid");
//      	  List<StockDetails> stockList = query.list();
//      	  if(stockList.size()==0) {
//      		  return null;
//      	  }
//      	  return stockList.get(0);
//		}
		
//		public Vendor search(String vendorid){
//			sessionFactory = SessionHelper.getConnection();
//			Session session = sessionFactory.openSession();
//			
//			Query query = session.createQuery("from Vendor where vendorId = :vendorId").setParameter("vendorId", vendorid);
//			
//			Vendor vendor = (Vendor) query.list().get(0);
//			
//			return vendor;
//		}
//	}
		
				
		public String updateStock(StockDetails stockDetails){
			sessionFactory = SessionHelper.getConnection();
			Session session = sessionFactory.openSession();
			org.hibernate.Transaction transaction = session.beginTransaction();
			session.saveOrUpdate(stockDetails);
			transaction.commit();
			return "Stock updated Successsfully...";
		
			
		}
}
		

	
		
	


