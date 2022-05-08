<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home - Colorlib Fine Arts</title>

     
    <link rel="stylesheet" href="./css/home.css">
    <link rel="stylesheet" href="./css/styles_Gallery.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
    
    
<style>

* {box-sizing:border-box}
#tt {
     text-align: center; 
     font-family: Georgia, serif;
     font-size: 45px;
     background: -webkit-linear-gradient(#004e92 , black);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
     }

body {
    
    background-color: #05e4a2; 
     background: -webkit-linear-gradient( #05e4a2, #185a9d); 
}

.logo{
  position: absolute;
  margin-top: 4px;
  margin-left: 10px;
}

nav{
 width: 100%;
 overflow: auto;
 background-color: black;
 /*background: #17a2b8;*/
 filter: opacity(90%);
 font-family: 'Quicksand', sans-serif;
 }

 
ul{
 padding: 0;
 margin: 0 0 0 700px;
 list-style: none;
 }
	
li{
 float: left;
 }
 
li a{
 width: 115px;
 display: block;
 padding: 20px 15px;
 text-decoration: none;
 font-weight: bold;
 color: white;
 text-align: center;
 }
 
li a:hover{
 background: #6c757d; 
 }

body {
    
    background-color: #20c997;
   
}

.gray{
	color: #2b2b2b;
}

.mySlides {
	display:none;
	/* height: 1vw !important;  */
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  max-height: 5000px;
  position: relative;
  margin: auto;
}

.container {
  display: block;
  flex-wrap: 100%;
  padding: 10px;
  box-sizing: border-box;
}

.container1{
  margin-left: 200px;
  margin-right: 200px;
 }

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  height: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}
    
.gallery {
  display: block;
  flex-basis: 100%;
  padding: 10px;
  box-sizing: border-box;
  float: left;
}

.lead{
 font-size: 20px;
 margin-left: 200px;
 margin-right: 200px;
 font-color: #ffffff;
 font-family: Georgia, serif;
}

.h1{
margin-left: 200px;
font-size: 45px;
font-family: Qualy;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
 
/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
</style>

    
</head>
<body>

	<!-- Navbar -->
	<header class="header" class="py-5 mt-5">
		<nav class="navbar navbar-expand-lg fixed-top py-3">
			<div class="container">
				<img alt="logo" src="./pictures/Logo.png" width="100" height="100">
				<button type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"
					class="navbar-toggler navbar-toggler-right">
					<i class="fa fa-bars"></i>
				</button>

				<div id="navbarSupportedContent" class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a href="#"
							class="nav-link text-uppercase font-weight-bold">Home <span
								class="sr-only"></span></a></li>
						<li class="nav-item"><a href="EventAllRetriv.jsp"
							class="nav-link text-uppercase font-weight-bold">About</a></li>
							
						<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
							class="nav-link text-uppercase font-weight-bold">Gallery</a></li>

							
						<li class="nav-item"><a onclick="location.href = 'LoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in</a></li>
							
							<li class="nav-item"><a onclick="location.href = 'add_customer.jsp'"
							class="nav-link text-uppercase font-weight-bold">Sign up</a></li>

							<li class="nav-item"><a onclick="location.href = 'ArtistLoginRedirector'"
							class="nav-link text-uppercase font-weight-bold">Log in as an Artist</a></li>

						<li class="nav-item"><a onclick="location.href = 'SpecialReqNavServlet'"
							class="nav-link text-uppercase font-weight-bold">Contact US</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header><br><br><br>
         
         
         <!-- For demo purpose -->
	<div class="container">
		<div class="pt-5 text-white">
			<div class="py-5 mt-5">
				<h1 id="tt">Colorlib Fine Arts</h1>
				<br><br>
				
				
	<!-- <h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>
 -->
<div class="slideshow-container">

<div class="mySlides fade">
 <img src="images/home1.jpg" style="width:100%; height:30vw">  
</div>

<div class="mySlides fade">
  <img src="images/home4.jpg" style="width:100%; height:30vw">
</div>

<div class="mySlides fade">
  <img src="images/home3.jpg" style="width:100%; height:30vw"> 
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<br><br>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2200); // Change image every 2 seconds
}
</script>

<!-- //test slide show end -->
			<div class="py-5">
				<h1 class="h1">
				<strong class="font-weight-bold">Who are we ?</strong></h1>
				<p class="lead">
				<br><b>We house an impressive selection of fine art to cater to different sensibilities and tastes. Discover our extensive fine art collection by browsing through our different collections...</b><strong class="font-weight-bold"></strong></p>
				<p class="lead"></p>
				<br><br><br>
			</div>
			
		</div>
	</div>
	
<p align="center" style="font-size:24px" ><b>- Featured Art Works -</b></p>

<div class="container1">	
<div class="gallery">
    <img src="./image1/a.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/b.jpg" alt="lake" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/c.jpg" alt="war" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/d.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/e.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/f.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/g.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/h.jpg" alt="nature" width="345" height="245">
</div>
<div class="gallery">
    <img src="./image1/i.jpg" alt="nature" width="345" height="245">
</div></div>


	
	<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="./js/script.js"></script>
</div>
</body>
</html>