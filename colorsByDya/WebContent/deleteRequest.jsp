<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/frontpage.css">
<link rel="stylesheet" href="css/styles_Gallery.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<title>Delete </title>
</head>
<body>

		<!-- Navbar -->
<nav class="navbar navbar-expand-md py-5 navbar-dark bg-info shadow-sm">
  <div class="container">
    <a href="#" class="navbar-brand">
     <img
        src="images/logo22.png"
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
        <li class="nav-item active"><a href="#" class="nav-link">Home <span class="sr-only">(current)</span></a></li>
        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Gallery</a></li>
        <li class="nav-item"><a href="SpecialRequest.jsp" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>
	
	<h1 style="text-align:Left; padding-left: 150px;">Delete Request</h1>

	<%
		String request_id = request.getParameter("request_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("c_customer_id");
		String artist_name = request.getParameter("artist_name");
	%>
	
	<div class="container p-3 my-3 rounded col-md-4" style="background-color: rgba(255, 255, 255, 0.5);">
	<form action="DeleteRequestServlet" method="post">
		<center><img name="photograph" src="images/<%=photograph%>" width="200px" height="200px"/></center><br>
		<table>
		<tr><td>Request ID</td><td><input type="text" name="request_id" value="<%= request_id %>" readonly></td></tr>
		<tr><td>Name</td><td><input type="text" name="name" value="<%= name %>" readonly></td></tr>
		<tr><td>Phone Number</td><td><input type="text" name="phone" value="<%= phone %>" readonly></td></tr>
		<tr><td>Email Address</td><td><input type="text" name="email" value="<%= email %>" readonly></td></tr>
		<tr><td>Message</td><td><input type="text" name="message" value="<%= message %>" readonly></td></tr>
		<%-- Photograph <input type="text" name="photograph" value="<%= photograph %>" readonly><br> --%>
		<tr><td>Address line 01</td><td><input type="text" name="add_line_01" value="<%= add_line_01 %>" readonly></td></tr>
		<tr><td>Address line 02</td><td><input type="text" name="add_line_02" value="<%= add_line_02 %>" readonly></td></tr>
		<tr><td>Postal code</td><td><input type="text" name="postal_code" value="<%= postal_code %>" readonly></td></tr>
		<tr><td>Province</td><td><input type="text" name="province" value="<%= province %>" readonly></td></tr>
		<tr><td>City</td><td><input type="text" name="city" value="<%= city %>" readonly></td></tr>
		<tr><td>Country</td><td><input type="text" name="country" value="<%= country %>" readonly></td></tr>
		<tr><td>Customer ID</td><td><input type="text" name="c_customer_id" value="<%= c_customer_id %>" readonly></td></tr>
		<tr><td>Artist Name</td><td><input type="text" name="artist_name" value="<%= artist_name %>" readonly></td></tr>
		</table><br><br>
		
		<input type="submit" class="button1 button2" name="submit" value="Delete Request" onClick="confirm( 'Delete Request?' )"><br>
	</form>
	</div>
	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>

<style>
h1{
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;}

table {
  width: 100%;
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
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.navbar {
    height: 100px !important; /*i assume your navbar size 100px*/
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
</style>	
</body>
</html>