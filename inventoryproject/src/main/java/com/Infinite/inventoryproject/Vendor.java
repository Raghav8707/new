package com.Infinite.inventoryproject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vendor")
public class Vendor {
	@Id
	@Column(name="vendorid")
	private String vendorid;

	@Column(name="vendorname")
	private String vendorname;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="vendorPhoneNo")
	private String  vendorPhoneNo;
	@Column(name="address1")
	private String address1;
	@Column(name="address2")
	private String  address2;
	@Column(name="city")
	private String  city;
	@Column(name="zipCode")
	private String  zipCode;
	
	public String getVendorid() {
		return vendorid;
	}
	public void setVendorid(String vendorid) {
		this.vendorid = vendorid;
	}
	public String getVendorname() {
		return vendorname;
	}
	public void setVendorname(String vendorname) {
		this.vendorname = vendorname;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVendorPhoneNo() {
		return vendorPhoneNo;
	}
	public void setVendorPhoneNo(String vendorPhoneNo) {
		this.vendorPhoneNo = vendorPhoneNo;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	

	
	public Vendor() {
		
	}
	
}
