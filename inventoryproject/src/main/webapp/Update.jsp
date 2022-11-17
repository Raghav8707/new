<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
      <center><h1>INVENTORY MANAGEMENT</h1></center>
      <hr>
</head>
<body>
<center><br><b>Update Details</b></center> <br><br>
<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.StockDAO"></jsp:useBean>
	<c:if test="${param.id != null }">
		<c:set var="stock" value="${beanDao.searchStock(param.id) }" />
		<form>
		<center>
		<table>
			Stock Id:
			<input name="stockid" value="${param.id }" readonly><br>
			Item Name:
			<input name="itemName" type="text" value="${stock.itemName }"><br>
			Price:
			<input name="price" type="text" value="${stock.price }" ><br>
			Quantity Available:
			<input name="quantityAvail" type="text" value="${stock.quantityAvail}" ><br>
			<input type=submit>
			</center>
			</table>
		</form>	
	</c:if>
	<c:if test="${param.stockid != null && param.itemName != null }">
		<jsp:useBean id="stock" class="com.Infinite.inventoryproject.StockDetails"/>
		<jsp:setProperty property="*" name="stock"/>
		
		<c:out value="${beanDao.updateStock(stock)}"/>
	</c:if>
</body>
</html>