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
<title>Update</title>
</head>
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
	<h1 style="text-align:Left; padding-left: 150px;">Update Request</h1><br>

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

	<div class="center">
	<form action="UpdateRequestServlet" method="post" class="form">
	    <%-- <img name="photograph" src="images/<%=photograph%>" width="200px" height="200px"/><br> --%>
	    <table>
		<tr><td>Name</td><td> <input type="text" name="name" value="<%= name %>" required oninvalid= "alert('Please enter the Name');"></td></tr>
		<tr><td>Phone Number</td><td> <input type="text" name="phone" value="<%= phone %>" pattern="{10}" required oninvalid= "alert('Please enter valid Phone Number');"></td></tr>
		<tr><td>Email Address</td><td> <input type="text" name="email" value="<%= email %>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required oninvalid= "alert('Please enter the Email Address');" title="Enter valid email"></td></tr>
		<tr><td>Message</td><td> <input type="text" name="message" value="<%= message %>"></td></tr>
		<tr><td>Address line 01</td><td> <input type="text" name="add_line_01" value="<%= add_line_01 %>"></td></tr>
		<tr><td>Address line 02</td><td> <input type="text" name="add_line_02" value="<%= add_line_02 %>"></td></tr>
		<tr><td>Postal code</td><td> <input type="text" name="postal_code" value="<%= postal_code %>"></td></tr>
		<tr><td>Province</td><td> <input type="text" name="province" value="<%= province %>"></td></tr>
		<tr><td>City</td><td> <input type="text" name="city" value="<%= city %>"></td></tr>
		<tr><td>Country</td><td> <input type="text" name="country" value="<%= country %>"></td></tr>
		<tr><td>Request ID</td><td> <input type="text" name="request_id" value="<%= request_id %>" readonly></td></tr>
		<tr><td>Photograph</td><td> <input type="text" name="photograph" value="<%= photograph %>" readonly></td></tr> 

		</table><br>
		
		<input type="submit" class="button button2" name="submit" value="Update Request"><br>
	</form>
	
	
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
</style>
</body>
</html>