<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Insert</title>

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

.left{
	background: url("DeliveryImages/bg1.jpg") no-repeat center;
	background-size: cover;
	height: 100%;
}
</style>

<script>
	   function InsertValidation() {
		   
		  if( document.getElementById('name').value == ""){
			  alert("Please Enter Full Name Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('add1').value == ""){
			  alert("Please Enter AddressLine 01 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('add2').value == ""){
			  alert("Please Enter AddressLine 02 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('postalCode').value == ""){
			  alert("Please Enter Postal code Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('region').value == ""){
			  alert("Please Enter Region Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('city').value == ""){
			  alert("Please Enter City Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('country').value == ""){
			  alert("Please Enter Country Before You Submit The Details");
			  return false;
		  }
	}
	
	</script>	
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
			<div class="left"></div>
			<div class="right">
				<h2>Delivery Details</h2> <br>
				
	   <form action="insert" method ="post" onsubmit="return InsertValidation()">
	   
	   <select name="mr/mrs" id="mr/mrs"  class="field" name="title">
       <option value="Mr">Mr</option>
       <option value="Mrs">Mrs</option>
       <option value="Ms">Ms</option>
       </select>
       
       <input type="text" class="field" placeholder="Full Name" id="name" name="name">
	   <input type="text" class="field" placeholder="Address Line 01" id="add1" name="add1">
	   <input type="text" class="field" placeholder="Address Line 02" id="add2" name="add2">
	   <input type="text" class="field" placeholder="Postal Code" id="postalCode" name="postalCode">
	   <input type="text" class="field" placeholder="Region" id="region" name="region">
	   <input type="text" class="field" placeholder="City" id="city" name="city">
	   <input type="text" class="field" placeholder="Country" id="country" name="country">
	   
	 <!--   <input type="text" class="field" placeholder="Username" name="uid">
	   <input type="password" class="field" placeholder="Password" name="pass">  --> 
	   
	    <input type="submit" name="submit" value="Submit" class="btn" >
		</form>
			</div>
		</div>
	</div>
</body>
</html>