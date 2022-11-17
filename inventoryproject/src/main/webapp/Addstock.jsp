<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<hr>
<center ><h1 >INVENTORY MANAGEMENT</h1></center>
      <hr>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body > 
<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.StockDAO"/>
<form method="get"  action="Addstock.jsp">
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
   	<jsp:useBean id="beanStock" class="com.Infinite.inventoryproject.StockDetails" />
	<jsp:setProperty property="*" name="beanStock"/>
	<c:out value="${beanDao.addstockDetails(beanStock)}"/>
</c:if>
</body>
</html>