<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
           <center> <h1>INVENTORY MANAGEMENT</h1></center> 
</head>
<body >
<center>
    <hr>  
       <center><b>Available Stock </b> </center>
	<jsp:useBean id="beanStock" class="com.Infinite.inventoryproject.StockDetails"></jsp:useBean>	
	<jsp:setProperty property="*" name="beanStock"/>
	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.StockDAO"></jsp:useBean>
	<form method="get" action="ShowStock.jsp">
	<table border="5" align="center">
	<tr>
	<th>Stock Id</th>
	<th>Item Name</th>
	<th>Price</th>
	<th>Quantity Avail</th>
	<th>Order</th>
	
	</tr>
	<c:forEach var="Stock" items="${beanDao.ShowStock()}">	
	<tr>
	<td>${Stock.stockid}</td>
	<td>${Stock.itemName}</td>
	<td>${Stock.price}</td>
	<td>${Stock.quantityAvail}</td>
	 <td bgcolor="green"><a href="AddOrder.jsp?id=${Stock.stockid}"><input type="button" value="Order" ></a></td>
	 
	</tr>
	</c:forEach>
	</table>	
	<c:out value="${param.quantity}"></c:out>
	</form>
	<center>
	<a href="SearchS.jsp?id=${Stock.stockid}"><input type="button" value="Search"></a>
	</center>



</body>
</html>