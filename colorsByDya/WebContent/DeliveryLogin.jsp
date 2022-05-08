<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Login</title>


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
	background: url("DeliveryImages/del1.jpg") no-repeat center;
	background-size: cover;
	height: 100%;
}

.contact-box{
	max-width: 50%;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	justify-content: center;
	align-items: center;
	text-align: center;
	background-color: #fff;
	box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);

}
.field{
	width: 100%;
	border: 2px solid rgba(0, 0, 0, 0);
	outline: none;
	background-color: rgba(230, 230, 230, 0.6);
	padding: 0.5rem 1rem;
	font-size: 1.1rem;
	margin-bottom: 22px;
	transition: .3s;
	align: center;
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
		<div class="left"></div>
			<div class="right">
				<h2>Login</h2> <br><br>

	
	
	<form action="log" method="post">
	
	 <input type="text" class="field" placeholder="Enter your username" name="uid"> <br>
	  <input type="password" class="field" placeholder="Enter your password" name="pass"><br><br>
	   
		
		<input type="submit" name="submit" value="login" class="btn">
	</form>
</div>
</div>
</div>
</body>
</html>