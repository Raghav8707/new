<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form method="post">
            <input type="text" name="userName" placeholder="userName" required><br><br>
            <input type="password" name="passCode" placeholder="passCode" required><br><br>
            <input type="submit" value="SIGN IN">
            
    </form>
    <a href="AddCustomer.jsp"><button>SIGN UP</button></a>
    
    <c:if test="${param.userName != null && param.passCode != null}">
        <jsp:useBean id="customer" class="com.Infinite.inventoryproject.Customer"/>
        <jsp:setProperty property="*" name="customer"/>
        <jsp:useBean id="dao" class="com.Infinite.inventoryproject.CustomerDAO"/>
        <c:out value="${dao.authenticate(param.userName,param.passCode)}"/>


	
       <c:if test="${dao.authenticate(param.userName, param.passCode) > 0 }">
       		<c:set var="userName" value="${param.userName }" scope="session"></c:set>
            <jsp:forward page="CustomerMenu.jsp"/>
        </c:if>
    </c:if>
    
    
    
    
    </body>
</html>