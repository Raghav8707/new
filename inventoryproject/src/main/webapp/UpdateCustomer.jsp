<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
<jsp:useBean id="dao" class="com.Infinite.inventoryproject.CustomerDAO"></jsp:useBean>
	<c:if test="${param.customerid != null }">
	<c:set var="customerid" value="${param.customerid}"/>
		<form>
			
			Customer Name:
			<input name="customerName" type="text" value="${customer.customerName }"><br/><br/>
			Customer Phone Number:
			<input name="customerPhoneNo" type="text" value="${customer.customerPhoneNo }" ><br/><br/>
			Gender :
            <input type="radio" name="gender" value="MALE">MALE<br/><br/>
            <input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
			 address1:
			<input name="address1" type="text" value="${customer.address1}" ><br/><br/>
			 address2:
			<input name="address2" type="text" value="${customer.address2}" ><br/><br/>
			 zip code:
			<input name="zipCode" type="text" value="${customer.zipCode }" ><br/><br/>
			 city:
			<input name="city" type="text" value="${customer.city}"><br/><br/>

			<input type="submit" value="Update">
		</form>	
	</c:if>
	<c:if test="${param.customerid != null && param.customerName != null }">
		<jsp:useBean id="customer" class="com.Infinite.inventoryproject.Customer"/>
		<jsp:useBean id="beanDAO" class="com.Infinite.inventoryproject.CustomerDAO"/>
		<jsp:setProperty property="customerName" name="customer"/>		
				<jsp:setProperty property="customerPhoneNo" name="customer"/>
				<jsp:setProperty property="gender" name="customer"/>
				<jsp:setProperty property="address1" name="customer"/>
				<jsp:setProperty property="address2" name="customer"/>
				<jsp:setProperty property="zipcode" name="customer"/>
			    <jsp:setProperty property="city" name="customer"/>
			    		<jsp:setProperty property="*" name="customer"/>
							<c:out value="${dao.updateCustomer(customer)}"/>
		
	</c:if>
</body>
</html>