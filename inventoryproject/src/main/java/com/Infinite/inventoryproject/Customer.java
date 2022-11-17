package com.Infinite.inventoryproject;

import javax.persistence.Column;



import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity 
@Table(name="Customer")
public class Customer {
	
	@Id
	@Column(name="customerid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int customerid;
	
	@Column(name="CustomerName")
	private String customerName;
	
	@Column(name="CustomerPhoneNo")
	private String CustomerPhoneNo;
	
	@Column(name="Gender")
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Column(name="address1")
	private String address1;
	
	@Column(name="address2")
	private String address2;
	
	@Column(name="zipcode")
	private String zipcode;
	
	@Column(name="city")
	private String city;
	
	
	@Column(name="userName")
	private String userName ;
	
	@Column(name="passCode")
	private String passCode;

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPhoneNo() {
		return CustomerPhoneNo;
	}

	public void setCustomerPhoneNo(String customerPhoneNo) {
		CustomerPhoneNo = customerPhoneNo;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassCode() {
		return passCode;
	}

	public void setPassCode(String passCode) {
		this.passCode = passCode;
	}
	
	

}