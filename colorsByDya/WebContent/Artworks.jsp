<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist_ Artwork</title>

	 <!-- <link rel="stylesheet" href="css/frontpage.css"> --> 
	 
	 <link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
	
	<link rel="stylesheet" href="./css/bootstrap.min.css?">
	<link rel="stylesheet" href="./css/styles.css?">
	<link rel="stylesheet" href="./css/home.css?">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
	<script charset="utf8" src="assets/js/jquery.dataTables.js"></script>
	
	<!--  <link rel="stylesheet" href="css/styles_Gallery.css?version=2">-->
	
	<style>
	@charset "ISO-8859-1";

:root {
  --font-family: #1e90ff;
  --font-size: #ffffff;
  --color-primary: #ABA194;
}
/****************************************** 
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: var(--font-family);
    font-size: var(--font-size);
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #046148 10%, #A2C7E5 90%);
    height: 100vh
}

.user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}
**********************/

.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.buttonpdf {
  position: relative;
  background-color: #346c82;
  border: none;
  font-size: 28px;
  color: #FFFFFF;
  padding: 15px;
  width: 30%;
  text-align: center;
  transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
  left:35%;
  align:center;
  border-radius:10px;
}

.buttonpdf:after {
  content: "";
  background: #f1f1f1;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px !important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s
}

.buttonpdf:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
	border-radius: 6px;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}

/***** Testing ****/
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: var(--font-family);
    font-size: var(--font-size);
    background-size: 200% 100% !important;
    /*animation: move 10s ease infinite;
    /* transform: translate3d(0, 0, 0); */
    /*background: linear-gradient(45deg, #04404a 10%, #A2C7E5 90%);
    /* background: linear-gradient(45deg, #04404a 10%, #4ca1af 90%); */
    /* height: 100vh */
    min-height: 110vh;
}

.btn {
	font-weight: bold;
	text-transform: uppercase!important;
	
	width:auto; 
	margin:0 auto;
    display: block;
    width: 100%;
    padding: 20px;
    font-family: var(--font-family);
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: #fff;
    background: rgb(127 169 195 / 22%);
    /* background: var(--color-primary); */
    transition: 0.3s;
    
    &:hover {
        background: darken(var(--color-primary), 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}



* {box-sizing:border-box}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #000000;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #949494;
}

/* Gallery_All_Logged.jsp   -->   Negotiate and Add to cart Buttons */

/* Style buttons */
.btnNC {
  background-color: #B2BEB5; 
  border: none; 
  border-radius: 5px; 
  color: black; 
  padding: 5px 5px; 
  font-size: 10px; 
  cursor: pointer;
}

/* Darker background on mouse-over */
.btnNC:hover {
  background-color: RoyalBlue;
}
 

/* Customize the "title" attribute of <a> tag with tool-tip */
a[data-title]:hover:after {
    opacity: 1;
    transition: all 0.1s ease 0.5s;
    visibility: visible;
}
a[data-title]:after {
    content: attr(data-title);
    position: absolute;
    bottom: -1.6em;
    left: 100%;
    padding: 4px 4px 4px 8px;
    color: #222;
    white-space: nowrap; 
    -moz-border-radius: 5px; 
    -webkit-border-radius: 5px;  
    border-radius: 5px;  
    -moz-box-shadow: 0px 0px 4px #222;  
    -webkit-box-shadow: 0px 0px 4px #222;  
    box-shadow: 0px 0px 4px #222;  
    background-image: -moz-linear-gradient(top, #f8f8f8, #cccccc);  
    background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, #f8f8f8),color-stop(1, #cccccc));
    background-image: -webkit-linear-gradient(top, #f8f8f8, #cccccc);  
    background-image: -moz-linear-gradient(top, #f8f8f8, #cccccc);  
    background-image: -ms-linear-gradient(top, #f8f8f8, #cccccc);  
    background-image: -o-linear-gradient(top, #f8f8f8, #cccccc);
    opacity: 0;
    z-index: 99999;
    visibility: hidden;
}
a[data-title] {
    position: relative;
}

.pseudo-tooltip-wrapper {
    /*This causes the wrapping element to be the same size as what it contains.*/
    display: inline-block;
}



/********************** SEARCH BAR CSS ****************************/
.topnav .search-container {
  float: right;
}


.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}







</style>

</head>
<body>

	<!-- Navbar
	<div class="container" style="height: 132px;">
		<header class="header" class="py-5 mt-5">
			<nav class="navbar navbar-expand-lg fixed-top py-3">
				<div class="container">
					<img alt="logo" src="./images/logo2.png" width="100" height="100">
					<button type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"
						class="navbar-toggler navbar-toggler-right">
						<i class="fa fa-bars"></i>
					</button>

					<div id="navbarSupportedContent" class="collapse navbar-collapse">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a href="index2.jsp"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="EventAllRetriv.jsp"
								class="nav-link text-uppercase font-weight-bold">Events</a></li>
							<!-- 	
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">My Profile</a></li>
								
							<li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Exhibitions</a></li>
								 
							<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
								
							<li class="nav-item"><a onclick="location.href = 'Servlet_AddPainting'"
								class="nav-link text-uppercase font-weight-bold">Upload Painting</a></li>
							<!-- 	
							<li class="nav-item"><a onclick="location.href = 'requestLoginServlet'"
								class="nav-link text-uppercase font-weight-bold">Special Requests</a></li>
								
							<li class="nav-item"><a onclick="location.href = 'NegoLoginServlet'"
								class="nav-link text-uppercase font-weight-bold">Negotiate Price Requests</a></li>
								 
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="ArtistList.jsp"
								class="nav-link text-uppercase font-weight-bold">${artistUserName}</a></li>
							<%-- <li class="nav-item"><a href="#"
								class="nav-link text-uppercase font-weight-bold">${artistUserID}</a></li> --%>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div> -->
	
	<nav class="navbar navbar-expand-md py-5 navbar-dark bg-info shadow-sm">
  <div class="container" style="height:50px;">
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
        <li class="nav-item active"><a href="index2.jsp" class="nav-link">Home <span class="sr-only">(current)</span></a></li>
        <li class="nav-item"><a href="EventAllRetriv.jsp" class="nav-link">Events</a></li>
        <li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'" class="nav-link">Gallery</a></li>
        <li class="nav-item"><a href="SpecialRequest.jsp" class="nav-link">Contact</a></li>
        <li class="nav-item"><a href="ArtistList.jsp" class="nav-link text-uppercase font-weight-bold">${artistUserName}</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- <input type="search" class="" placeholder="" aria-controls="table1"> -->

	<!-- <input type="button" name="report" value="Generate JAVA Report" onclick="location.href='Servlet_Gallery_Paint_PDF'"> <br> -->
	
	<!-- <input type="button" class="btn"  name="report" value="View Report" target="_blank" onclick="location.href='Gallery_Painitng_PDF.jsp'"> <br> 
	<button class="btn" target="_blank" onclick="location.href='Gallery_Painitng_PDF.jsp?artistUserID=${artistUserID}'">
		<img id="pdfButton" alt="" src="images/summarize_black_24dp.svg" width="30px"> VIEW REPORT
	</button> <br><br> -->
	
	<br><br>
	<button class="buttonpdf" onclick = "location.href='GalleryPDF.jsp'"><i class="fa fa-folder"></i>Generate Report</button>
	<br><br>	
	<div class="table-responsive" style="width:auto; margin:0 auto;">

	<table>
		<c:forEach var="paint" items="${paintingDetails}">
		
		<c:set var="painting_id" value="${paint.painting_id}"/>
		<c:set var="title" value="${paint.title}"/>
		<c:set var="description" value="${paint.description}"/>
		<c:set var="price" value="${paint.price}"/>
		<c:set var="drawn_date" value="${paint.drawn_date}"/>
		<c:set var="category" value="${paint.category}"/>
		<c:set var="weight" value="${paint.weight}"/>
		<c:set var="length" value="${paint.length}"/>
		<c:set var="width" value="${paint.width}"/>
		<c:set var="image_url" value="${paint.image_url}"/>
		<c:set var="material" value="${paint.material}"/>
		<c:set var="in_stock" value="${paint.in_stock}"/>
		<c:set var="frame" value="${paint.frame}"/>
		<c:set var="a_artist_id" value="${paint.a_artist_id}"/>
		<c:set var="artistUserName" value="${artistUserName}"/>
		
		<tr>
			<!-- <th>Artwork ID</th> -->
			<th> Title </th>
			<th>Description</th>
			<th>Price</th>
			<th>Drawn Date</th>
			<th>Category</th>
			<th> Weight</th>
			<th>Length</th>
			<th>Width</th>
			<th> Image </th>
			<th> Material</th>
			<!-- <th> In-stock </th> -->
			<th> Frame </th>
		</tr>
		<tr>	
			
			<%-- <td>${paint.painting_id}</td> --%>
			<td>${paint.title}</td>
			<td>${paint.description}</td>
			<td>${paint.price}</td>
			<td>${paint.drawn_date}</td>
			<td>${paint.category}</td>
			<td>${paint.weight}</td>
			<td>${paint.length}</td>
			<td>${paint.width}</td>
			<td><img src="images/${paint.image_url}" width="100px"></td>
			<td>${paint.material}</td>
			<%-- <td>${paint.in_stock}</td> --%>
			<td>${paint.frame}</td>
		
		
		
		<c:url value="Gallery_UpdatePainting.jsp" var="paintingUpdate">
		<!-- What data should be carried when going to Gallery_UpdatePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="artistUserName" value="${artistUserName}"/>
			
		</c:url>
		
		<c:url value="Gallery_DeletePainting.jsp" var="paintingDelete">
		<!-- What data should be carried when going to Gallery_DeletePainting page -->
		
			<c:param name="painting_id" value="${painting_id}"/>
			<c:param name="title" value="${title}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="price" value="${price}"/>
			<c:param name="drawn_date" value="${drawn_date}"/>
			<c:param name="category" value="${category}"/>
			<c:param name="weight" value="${weight}"/>
			<c:param name="length" value="${length}"/>
			<c:param name="width" value="${width}"/>
			<c:param name="image_url" value="${image_url}"/>
			<c:param name="material" value="${material}"/>
			<c:param name="in_stock" value="${in_stock}"/>
			<c:param name="frame" value="${frame}"/>
			<c:param name="a_artist_id" value="${a_artist_id}"/>
			<c:param name="artistUserName" value="${artistUserName}"/>
			
		</c:url>
		
		
			<td> <div>
				<a href="${paintingUpdate}">
				<input type="button" name="edit" value="EDIT" style="width:100%"> </a>
				</div>
		 	</td>
			<td> <div>
				<a href="${paintingDelete}">
				<input type="button" name="delete" value="DELETE" style="width:100%"> </a>
				</div>
		 	</td>
		</tr>
				
		</c:forEach>
		
		</table>
		</div>
		<br><br>
		
		
<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>

<script type="text/javascript">
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>





</body>
</html>