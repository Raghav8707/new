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
	<jsp:useBean id="orderDao" class="com.Infinite.inventoryproject.OrderDAO"/>
	<jsp:useBean id="stockDao" class="com.Infinite.inventoryproject.StockDAO"/>
	<c:set var="user" value="${userName }"/>
	<table border="5" align="center">
		<tr>
			<th>ID</th>
			<th>Stock Id</th>
			<th>Quantity</th>
			<th>Itemname</th>
			<th>Price</th>
			<th>Status</th>
		
		<c:forEach var="Order" items="${orderDao.showorder(user)}">	
			<c:set var="stock" value="${stockDao.searchStock(Order.stockId) }"/>
			<tr>
				<td>${Order.orderId}</td>
				<td>${Order.stockId}</td>
				<td>${Order.quantityOrder}</td>
				<td>${stock.itemName }</td>
				<td>${Order.TotalPrice}</td>
				<td>${Order.orderStatus}
				<c:if test="${Order.orderStatus != 'DELIVERED' }">
					<td>
						<form>
							<input type="hidden" name="orderId" value="${Order.orderId }">
							<button type="submit">CANCEL</button>
						</form>
					</td>				
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<a href=""><button>Proceed To Buy</button></a>
	
	<c:if test="${param.orderId != null }">
		${orderDao.cancelOrder(param.orderId) }
	</c:if>
</body>
</html>