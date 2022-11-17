<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.CustomerDAO"/>
	<table border="3" align="center">
	<tr>
		<th>Customer Id</th>
		<th>Customer Name</th>
		<th>Customer PhoneNo</th>
		<th>Gender</th>
		<th>Address 1</th>
		<th>Address 2</th>
		<th>ZipCode </th>
		<th>City </th>
		<th>Update</th>
	</tr>
	<c:forEach var="customer" items="${beanDao.showCustomer()}">
		<tr>
			<td>${customer.customerid}</td>
			<td>${customer.customerName}</td>
			<td>${customer.customerPhoneNo}</td>
			<td>${customer.gender}</td>
			<td>${customer.address1}</td>
			<td>${customer.address2}</td>
			<td>${customer.zipcode}</td>
			<td>${customer.city}</td>
			<td><a href="UpdateCustomer.jsp?customerid=${customer.getCustomerid() }"><button>UPDATE</button></a></td>	
		</tr>
	</c:forEach>
	</table>
</body>
</html>