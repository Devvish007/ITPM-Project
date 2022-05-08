<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Update</title>

<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>
   
   <table>
	<c:forEach var="del" items="${delivDetails}">
	
	<c:set var="deliveryid" value="${del.deliveryID}"/>
	<c:set var="title" value="${del.title}"/>
	<c:set var="name" value="${del.name}"/>
	<c:set var="add1" value="${del.add1}"/>
	<c:set var="add2" value="${del.add2}"/>
	<c:set var="postalCode" value="${del.postalCode}"/>
	<c:set var="region" value="${del.region}"/>
	<c:set var="city" value="${del.city}"/>
	<c:set var="country" value="${del.country}"/>
	
	
	<tr>
		<td>Delivery ID</td>
		<td>${del.deliveryID}</td>
	</tr>
	<tr>
		<td>Title</td>
		<td>${del.title}</td>
	</tr>
	<tr>
		<td>Full Name</td>
		<td>${del.name}</td>
	</tr>
	<tr>
		<td>Address Line 01</td>
		<td>${del.add1}</td>
	</tr>
	<tr>
		<td>Address Line 02</td>
		<td>${del.add2}</td>
	</tr>
	<tr>
		<td>Postal Code</td>
		<td>${del.postalCode}</td>
	</tr>
	<tr>
		<td>Region</td>
		<td>${del.region}</td>
	</tr>
	<tr>
		<td>City</td>
		<td>${del.city}</td>
	</tr>
	<tr>
		<td>Country</td>
		<td>${del.country}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	<c:url value="DeliveryUpdate.jsp" var="delupdate">
	    <c:param name="id" value="${deliveryid}"/>
	    <c:param name="title" value="${title}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="add1" value="${add1}"/>
		<c:param name="add2" value="${add2}"/>
		<c:param name="postalCode" value="${postalCode}"/>
		<c:param name="region" value="${region}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		
	</c:url>
	
	<a href="${delupdate}">
	<input type="button" name="update" value="Update">
    </a>
    
    <c:url value="DeliveryUpdate.jsp" var="deldelete">
	    <c:param name="id" value="${deliveryid}"/>
	    <c:param name="title" value="${title}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="add1" value="${add1}"/>
		<c:param name="add2" value="${add2}"/>
		<c:param name="postalCode" value="${postalCode}"/>
		<c:param name="region" value="${region}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		
	</c:url>
    
    <a href="${deldelete}">
	<input type="button" name="delete" value="delete">
    </a>
    
</body>
</html>