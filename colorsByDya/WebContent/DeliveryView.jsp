<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Details</title>

<link rel="stylesheet" href="./DeliveryCss/style2.css">
<link rel="stylesheet" href="./DeliveryCss/style.css">
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

<style>

.container:after{
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	background: url("DeliveryImages/bg.jpg") no-repeat center;
	background-size: cover;
	filter: blur(50px);
	z-index: -1;
}

.contact-box{
	max-width: 1225px;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	justify-content: center;
	align-items: center;
	text-align: center;
	background-color: #fff;
	box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);
}

.content{
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
 }
  
.content thead tr{
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
  font-size: 14px;
 }
  
.content th,
.content td{
	padding: 20px 30px;
}

.btn{
	width: 17%;
	padding: 0.5rem 1rem;
	background-color: #2ecc71;
	color: #fff;
	font-size: 1.1rem;
	border: none;
	outline: none;
	cursor: pointer;
	transition: .3s;
	margin-left: 80%;
}

.btn1{
	width: 17%;
	padding: 0.5rem 1rem;
	background-color: #2ecc71;
	color: #fff;
	font-size: 1.1rem;
	border: none;
	outline: none;
	cursor: pointer;
	transition: .3s;
	margin-left: 80%;
	margin-top: 10px;
}
.btn1:hover{
    background-color: #27ae60;
}
</style>

</head>
<body>

<nav>
   
   <div class="logo">
   <a href="#"><img src="DeliveryImages/logo22.jpg" width="120px" height="52px"></a></div>
            <ul>
            <li><a onclick= "location.href='./index.jsp'">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Gallery</a></li>
            <li><a href="#">Contact us</a></li>
            <li><a href="#">Log out</a></li>
            </ul>
         </nav>
         
         <div class="container">
         <div class="contact-box">
         <div class="right">
				<h2>Delivery Details</h2> 
				
				<table>
	<c:forEach var="cus" items="${del}">
	
	<c:set var="id" value="${cus.deliveryID}"/>
	<c:set var="title" value="${cus.title}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="add1" value="${cus.add1}"/>
	<c:set var="add2" value="${cus.add2}"/>
	<c:set var="postalcode" value="${cus.postalCode}"/>
	<c:set var="region" value="${cus.region}"/>
	<c:set var="country" value="${cus.country}"/>
	
	<tr>
		<td>Delivery ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Title</td>
		<td>${cus.title}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Address 1</td>
		<td>${cus.add1}</td>
	</tr>
	<tr>
		<td>Address 2</td>
		<td>${cus.add2}</td>
	</tr>
	<tr>
		<td>Postal Code</td>
		<td>${cus.postalcode}</td>
	</tr>
	<tr>
		<td>Region</td>
		<td>${cus.region}</td>
	</tr>
	<tr>
		<td>City</td>
		<td>${cus.city}</td>
	</tr>
	<tr>
		<td>Country</td>
		<td>${cus.country}</td>
	</tr>

	</c:forEach>
	</table>
				<br>
				<input type="submit" name="submit" value="Update" class="btn" onclick="window.location='DeliveryUpdate.jsp'"> <br> 
				<input type="button" name="delete" value="Delete" class="btn1">
			</div>
		</div>
	</div>
				
         
</body>
</html>