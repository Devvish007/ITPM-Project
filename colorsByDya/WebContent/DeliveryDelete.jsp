<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
		   
		  if( document.getElementById('Fname').value == ""){
			  alert("Please Enter Full Name Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('addLineOne').value == ""){
			  alert("Please Enter AddressLine 01 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('addLineTwo').value == ""){
			  alert("Please Enter AddressLine 02 Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('PostalCo').value == ""){
			  alert("Please Enter Postal code Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('DeliveryPro').value == ""){
			  alert("Please Enter Province Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('DeliveryCity').value == ""){
			  alert("Please Enter City Before You Submit The Details");
			  return false;
		  }
		  if( document.getElementById('DeliveryCountry').value == ""){
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
            <li><a href="#home">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Gallery</a></li>
            <li><a href="#">Contact us</a></li>
            </ul>
         </nav><br><br>
         
        <div class="container">
		<div class="contact-box">
			<div class="left"></div>
			<div class="right">
				<h2>Delete Delivery Details</h2> 
				
		
		<%
		   String deliveryID = request.getParameter("deliveryID");
		   
		   String name = request.getParameter("name");
		   String add1 = request.getParameter("add1");
		   String add2 = request.getParameter("add2");
		   String postalCode = request.getParameter("postalCode");
		   String region = request.getParameter("region");
		   String city = request.getParameter("city");
		   String country = request.getParameter("country");
		%>
				
	   <form action="update" method ="post" onsubmit="return InsertValidation()">
	   
	   <input type="text" class="field" placeholder="Delivery ID" name="delid" value="<%= deliveryID  %>" readonly>
	   
	   <!--  
	   <select name="mr/mrs" class="field" value="<%= title %>">
       <option value="Mr">Mr</option>
       <option value="Mrs">Mrs</option>
       <option value="Ms">Ms</option>
       </select>  -->
       
       
       <input type="text" class="field" placeholder="Full Name" name="name" value="<%= name %>">
	   <input type="text" class="field" placeholder="Address Line 01" name="add1" value="<%= add1 %>">
	   <input type="text" class="field" placeholder="Address Line 02" name="add2" value="<%= add2 %>">
	   <input type="text" class="field" placeholder="Postal Code" name="postalCode" value="<%= postalCode %>">
	   <input type="text" class="field" placeholder="Region" name="region" value="<%= region %>">
	   <input type="text" class="field" placeholder="City" name="city" value="<%= city %>">
	   <input type="text" class="field" placeholder="Country" name="country" value="<%= country %>">
	   
	    <input type="submit" name="Submit" value="Submit" class="btn">
		</form>
			</div>
		</div>
	</div>


</body>
</html>