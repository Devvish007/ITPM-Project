<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">

<script src="js/Request.js"></script>


<title>Your Special Requests</title>
</head>
                <%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-md py-5 navbar-dark bg-info shadow-sm">
  <div class="container">
    <a href="#" class="navbar-brand">
     <img
        src="images/logo2.png"
        height="300px"
        alt="MDB Logo"
        loading="lazy"
        style="margin-top: -1px;
        padding-top: 100px;"
      />
    </a>

    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent3" aria-controls="navbarSupportedContent3" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

    <div id="navbarSupportedContent3" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item "><a href="#" class="nav-link"><h5>Home</h5> <span class="sr-only">(current)</span></a></li>
        <li class="nav-item"><a href="#" class="nav-link"><h5>About</h5></a></li>
        <li class="nav-item"><a href="#" class="nav-link"><h5>Gallery</h5></a></li>
        <li class="nav-item active"><a href="SpecialRequest.jsp" class="nav-link"><h5>Contact</h5></a></li>
      </ul>
    </div>
  </div>
</nav> <br><br>
	<div class="myDiv4Search">
		<form method="post" action="requestNewSearch">
			
			<div style=" height:40px; width:110px;float: right;margin-right: 80px;">
			<input type="submit"  class= "button button2" value="Search">
		</div>
		<div > 
			<input type="text" style= " margin-left: 80px; padding: 8px;width:40%;" id="search" name="search" placeholder="Searche Here" > </div>
		</form>
	</div><br>

	<h1 style="text-align:Left; padding-left: 80px;">Your Special Requests</h1> <hr style=" width:90%;
        background: black;
        margin-bottom: 20px;"> </hr>
	
			<a href="newrequestpdf.jsp">
		<input type="submit" name="submit" style=" width:300px;float: right;margin-right: 80px;" class= "button button2" value="Generate request report"> <br><br><br>
		</a>
	<table>
	
	<tr>
		<th>Request ID</th>
		<th>Name</th>
		<th>Phone </th>
		<th>Email </th>
		<th>Message</th>
		<th>Photograph</th>
		<th>Address</th>
		<th>Postal Code</th>
		<th>Artist ID</th>
		<th>Action</th>
		<th></th>
		
	</tr>
	
	<c:forEach var="req" items="${reqCusList}">
	
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="name" value="${req.name}"/>
	<c:set var="phone" value="${req.phone}"/>
	<c:set var="email" value="${req.email}"/>
	<c:set var="message" value="${req.message}"/>
	<c:set var="photograph" value="${req.photograph}"/>
	<c:set var="add_line_01" value="${req.add_line_01}"/>
	<c:set var="add_line_02" value="${req.add_line_02}"/>
	<c:set var="postal_code" value="${req.postal_code}"/>
	<c:set var="province" value="${req.province}"/>
		<c:set var="city" value="${req.city}"/>
	
	<c:set var="request_id" value="${req.request_id}"/>
	<c:set var="country" value="${req.country}"/>
	<c:set var="artist_name" value="${req.artist_name}"/>
	<c:set var="accept" value="${req.accept}"/>
	
	<tr>
		<td>${req.request_id}</td>
		<td>${req.name}</td>
		<td>${req.phone}</td>
		<td>${req.email}</td>
		<td>${req.message}</td>
		<td><img src="images/${req.photograph}" width="100px" height="100px"/></td>
		<td>${req.add_line_01} ${req.add_line_02} ${req.province} ${req.country}</td>
		<td>${req.postal_code}</td>
		<td>${req.artist_name}</td>
	

	
	
	<c:url value="RequestUpdate.jsp" var="requpdate">
		<c:param name="request_id" value="${request_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="photograph" value="${photograph}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="artist_name" value="${artist_name}"/>
		
	</c:url>

		 <td>
			<a href="${requpdate}">
			<input type="button" id="disButton" class="button button2" name="update" value="Update">
			</a>
		</td> 
	
	
	<c:url value="deleteRequest.jsp" var="reqdelete">
		<c:param name="request_id" value="${request_id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="photograph" value="${photograph}"/>
		<c:param name="add_line_01" value="${add_line_01}"/>
		<c:param name="add_line_02" value="${add_line_02}"/>
		<c:param name="postal_code" value="${postal_code}"/>
		<c:param name="province" value="${province}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="artist_name" value="${artist_name}"/>
	</c:url>
	<td>
	<a href="${reqdelete}">
	<input type="button" id="disButton" class="button1 button2" name="delete" value="Delete">
	</a>
	</td>
	
	
	</tr>
	</c:forEach>
	</div>
	</table>
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>

<style>
h1{
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;}

table {
    margin: auto;
  width: 90%;
  padding: 10px;
}
th, td {
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;

background-color: white;
  text-align: left;
  border-bottom: 1px solid #ddd;
  height:60px;
}
.center {
  margin: auto;
  width: 70%;
  padding: 10px;
  background-color: rgb(0 0 0 / 8%);
  
}
input {
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
  height:80%;
	border:none;
  width: 100%;
}
.button {
 height:60px;
 
  background-color: #3399FF; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
 height:60px;
 
  background-color: #FF2400; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.navbar {
    height: 100px !important; /*i assume your navbar size 100px*/
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>	
</body>
</html>