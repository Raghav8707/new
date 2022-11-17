<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function calc() {
	var qty=document.getElementById("qty").value;
	var price=document.getElementById("price").value;
	result=qty*price;
	frmCalc.TotalPrice.value=result;
}
</script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Order</title>
</head>
<body>
	<jsp:useBean id="stockDao" class="com.Infinite.inventoryproject.StockDAO" />
	<c:if test="${param.id!=null}">
	<c:set var="id" value="${param.id}"/>
	</c:if>
	<c:if test="${param.stockId!=null}">
<c:set var="id" value="${param.stockId}"/>
	
	</c:if>
		<c:out value="${id}"/>
	<c:set var="stockprice" value="${stockDao.searchStock(id)}"/>
	<form name="frmCalc">
		User name:
		<input type="text" name="userName" value="${userName }"> <br/><br/>
		
		Stock Id :
		<input type="text" name="stockId" value="${param.id}"><br/><br/>
		 price :
		 <input type="text" name="price" id="price" value="${stockprice.price}"><br/><br/>
		Quantity Order:
		<input type="number" name="quantityOrder" id="qty" onblur="calc()"/> <br/><br/>
		
		total bill:
		<input type="number" name="TotalPrice"/> <br/><br/>
		
		 
		<input type="submit" value="Place Order" />
	</form>
      
	<c:if test="${param.TotalPrice != null}">
		<jsp:useBean id="order" class="com.Infinite.inventoryproject.Order" />
		<jsp:useBean id="dao" class="com.Infinite.inventoryproject.OrderDAO"/>
		
		<jsp:setProperty property="*" name="order"/>
		
		<c:out value="${dao.addOrder(order)}" />
	</c:if>

</body>
</html>