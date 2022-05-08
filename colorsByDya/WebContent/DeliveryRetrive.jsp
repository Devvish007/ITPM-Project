<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Details</title>

<link rel="stylesheet" href="./DeliveryCss/style2.css">
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

.example input[type=text] {
  padding: 6px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 20%;
  background: #f1f1f1;
  margin-left: 75%;
}

.example button {
  float: right;
  width: 5%;
  padding: 6px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

.example button:hover {
  background: #0b7dda;
}

.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>

</head>
<body>

<nav>
   
   <div class="logo">
   <a href="#"><img src="DeliveryImages/logo22.jpg" width="120px" height="52px"></a></div>
            <ul>
            <li><a href="#home">Home</a></li>
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
				
				
				<form class="example" action="">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
                </form>
				
				<table class= "content">
				<thead>
				<tr>
				<th>DeliveryID</th>
				<th>Title</th>
				<th>Full_Name</th>
				<th>Address_Line_01</th>
				<th>Address_Line_02</th>
				<th>Postal_Code</th>
				<th>Region</th>
				<th>City</th>
				<th>Country</th>
				</tr></thead>
				
				<tbody>
				<tr>
				<td>01</td>
				<td>Ms</td>
				<td>Anushka Kiriella</td>
				<td>No 26 uduwela kandy</td>
				<td>kandy</td>
				<td>20000</td>
				<td>central</td>
				<td>kandy</td>
				<td>sri lanka</td>
				</tr>
				
				<tr>
				<td>02</td>
				<td>Ms</td>
				<td>Piyumali Wanagasekara</td>
				<td>No 34 rathnatena</td>
				<td>kandy</td>
				<td>20000</td>
				<td>central</td>
				<td>kandy</td>
				<td>sri lanka</td>
				</tr>
				
				<tr>
				<td>03</td>
				<td>Ms</td>
				<td>Deshan fernand</td>
				<td>No 56 pilimathalawa</td>
				<td>kandy</td>
				<td>20000</td>
				<td>central</td>
				<td>kandy</td>
				<td>sri lanka</td>
				</tr>
				
				
				</tbody>
				
				</table>
				
				<input type="submit" name="submit" value="Generate Report" class="btn" onclick="window.location='DeliveryReportGenerate.jsp'"> <br> 
				
				
				</div>
				</div>
				</div>
         
</body>
</html>