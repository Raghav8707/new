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
<form  text-align="center" method="get" action="AddCustomer.jsp">
<center>
Customer Name :
<input type="text" name="customerName" ><br/><br/>
Customer PhoneNo :
<input type="text" name="customerPhoneNo" ><br/><br/>
Gender :
<input type="radio" name="gender" value="MALE">MALE
<input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
Address 1:
<input type="text" name="address1" ><br/><br/>
Address 2:
<input type="text" name="address2" ><br/><br/>
ZipCode :
<input type="text" name="zipcode" ><br/><br/>

Username :
<input type="text" name="userName" ><br/><br/>

PassCode :
<input type="password" name="passCode" required ><br/><br/>
City :
<input type="text" name="city" ><br/><br/>
<input type="submit"  value="SUBMIT"><br/><br/>
</form>

<c:if test="${param.customerid!= null }">
Customer Name :
<input type="text" name="customerName" ><br/><br/>
Customer PhoneNo :
<input type="text" name="customerPhoneNo" ><br/><br/>
Gender :
<input type="radio" name="gender" value="MALE">MALE<br/><br/>
<input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
Address 1:
<input type="text" name="address1" ><br/><br/>
Address 2:
<input type="text" name="address2" ><br/><br/>
ZipCode :
<input type="text" name="zipcode" ><br/><br/>
City :
<input type="text" name="city" ><br/><br/>
UserName :
<input type="text" name="userName" ><br/><br/>
PassCode :
<input type="text" name="passCode" ><br/><br/>
<input type="submit"  value="SUBMIT"><br/><br/>
</c:if>
</center>
<c:if test="${param.customerName!=null }">
		<jsp:useBean id="customer" class="com.Infinite.inventoryproject.Customer"/>
		<jsp:useBean id="beanDAO" class="com.Infinite.inventoryproject.CustomerDAO"/>
				<jsp:setProperty property="customerName" name="customer"/>						
				<jsp:setProperty property="*" name="customer"/>				
		<c:out value="${beanDAO.addCustomer(customer)}"/>
	</c:if>
</body>
</html>