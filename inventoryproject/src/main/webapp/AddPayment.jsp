<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.PaymentDAO"/>
<form method="get"  action="AddPayment">
<center>
   Item Name:
  <input type="text" name="itemName"  required/><br><br>   
   Price:
    <input type="text" name="price" required><br><br>
   Item Quantity:
    <input type="text" name="quantityAvail" required> <br><br>
    <input type= "submit" value ="ADD">
    <a href="ShowStock.jsp"> <input type="button" value="Show"></a>
    </center>
 </form>
    <c:if test="${param.quantityAvail !=null }">
   	<jsp:useBean id="beanStock" class="com.Infinite.inventoryproject.Payment" />
	<jsp:setProperty property="*" name="beanStock"/>
	<c:out value="${beanDao.addPayment(beanStock)}"/>
</c:if>
</body>
</html>