<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE</title>

		<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
		
		.form__inputImg {
		    border-radius: 8px;
		    display: block;
		    width: 100%;
		    padding: 10px;
		    /* margin-left:100px; */
		    font-family: Arial, Helvetica, sans-serif;
		    -webkit-appearance: none;
		    border: 0;
		    outline: 0;
		    transition: 0.3s;
		    &: focus {;
		    background: darken(#fff, 3%);
		    }: ;
		}
	</style>
	
<!-- <link rel="stylesheet" href="css/frontpage.css"> -->
 
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<link rel="stylesheet" href="css/styles_Gallery.css">

<!-- Preview image links -->
<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<script src="js/Gallery_JScript.js"></script>

	
</head>
<body>

<%
	// Catch data coming through the url from Artworks.jsp page
	
		String painting_id = request.getParameter("painting_id");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String drawn_date = request.getParameter("drawn_date");
		String category = request.getParameter("category");
		String weight = request.getParameter("weight");
		String length = request.getParameter("length");
		String width = request.getParameter("width");
		String image_url = request.getParameter("image_url");
		String material = request.getParameter("material");
		String in_stock = request.getParameter("in_stock");
		String frame = request.getParameter("frame");
		String artistUserID = request.getParameter("a_artist_id");
		String artistUserName = request.getParameter("artistUserName");
	%>



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
							<li class="nav-item active"><a href="#"
								class="nav-link text-uppercase font-weight-bold">Home <span
									class="sr-only"></span></a></li>
							<li class="nav-item"><a href="EventAllRetriv.jsp"
								class="nav-link text-uppercase font-weight-bold">Events</a></li>
							
							<li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'"
								class="nav-link text-uppercase font-weight-bold">Gallery</a></li>
							
							<li class="nav-item"><a onclick="location.href = 'SessionFlusher'"
								class="nav-link text-uppercase font-weight-bold">Log out</a></li>
							<li class="nav-item"><a href="../Payments/payment.jsp"
								class="nav-link text-uppercase font-weight-bold"><%= artistUserName %></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>-->
	
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
        <li class="nav-item active"><a href="index2.jsp" class="nav-link">Home <span class="sr-only">(current)</span></a></li>
        <li class="nav-item"><a href="EventAllRetriv.jsp" class="nav-link">Events</a></li>
        <li class="nav-item"><a onclick="location.href = 'Servlet_Gallery_All'" class="nav-link">Gallery</a></li>
        <li class="nav-item"><a href="SpecialRequest.jsp" class="nav-link">Contact</a></li>
        <li class="nav-item"><a href="ArtistList.jsp" class="nav-link text-uppercase font-weight-bold">${artistUserName}</a></li>
      </ul>
    </div>
  </div>
</nav>



	<!-- Was Here -->
	
	<div class="container p-3 my-3 rounded col-md-4" style="background-color: #cfd0d1">
	
	<form action="Servlet_updatePainting" method="post" onsubmit="return validateForm()" class="form">
		
		<input class="form__input" type="hidden" name=painting_id value="<%= painting_id %>" readonly>
		<div class="form__group">
			
			<%-- <input type="text" class="form__input" name="image_url" value="<%= image_url %>" --%> 
			<img class="form__inputImg" src="images/<%= image_url %>" width="100px">
		</div><br>
		
		<div class="form__group">
			<label>Title</label>
			<input class="form__input" type="text" name="title" value="<%= title %>" required oninvalid= "alert('Please enter the title');">
		</div><br>
		<div class="form__group">
			<label>Description</label>
			<textarea class="form__input" rows="" cols="" name="description" value=""><%= description %></textarea>
			<%-- <input type="text" class="form__input" name="description" value="<%= description %>"> --%>
		</div><br>
		<div class="form__group">
			<label>Price (LKR)</label>
			<input type="text" class="form__input" name="price" value="<%= price %>" required oninvalid= "alert('Please enter the price');" min="10000" oninput="this.value = 
 !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null" step=".01"> 
		</div><br>
		<div class="form__group">
			<label>Drawn Date</label>
			<input type="date" id="drawnDate" class="form__input" name="drawn_date" value="<%= drawn_date %>" min="1970-01-01" max="2021-05-17">
		</div><br>
		<div class="form__group">
			<label>Category</label>
			<select name="category" class="form__input" id="category" required oninvalid= "alert('Please choose a category');">
					<option selected="true" disabled="disabled" hidden><%= category %></option>
					<option value="Abstract">Abstract</option>
					<option value="Nature">Nature</option>
					<option value="Black and White">Black n White</option>
					<option value="Oil Painting">Oil painting</option>
		      		<option value="Watercolor">Watercolour</option>
		      		<option value="Postercolor">Postercolour</option>
		      		<option value="Acrylic">Acrylic</option>
		       		<option value="Pencil Sketch">Pencil sketch</option>
					<option value="Other">Other</option>
				</select>
		</div><br>
		<div class="form__group">
			<label>Weight (kg)</label>
			<input type="number" class="form__input" name="weight" value="<%= weight %>" min="0" oninput="this.value = Math.abs(this.value)" step=".01"> 
		</div><br>
		<div class="form__group">
			<label>Length (cm)</label>
			<input type="number" class="form__input" name="length" value="<%= length %>" min="0" oninput="this.value = Math.abs(this.value)" step=".01"> 
		</div><br>
		<div class="form__group">
			<label>Width (cm)</label>
			<input type="number" class="form__input" name="width" value="<%= width %>" min="0" oninput="this.value = Math.abs(this.value)" step=".01">
		</div><br>
		
		<div class="form__group">			
			<input type="hidden" class="form__input" name="image_url" value="<%= image_url %>"
			
		</div>
		
		<div class="form__group">
			<label>Material</label>
			<input type="text" class="form__input" name="material" value="<%= material %>">
		</div><br>
		<div class="form__group">
			<label>Frame</label>
			<input type="text" class="form__input" name="frame" value="<%= frame %>">
		</div><br>
		
		
		
		
	<%-- 	
		
	<table style="border: 0px;">
		<tr>
			<td>Painting ID</td>
			<td><input type="text" name=painting_id value="<%= painting_id %>" readonly></td>
		</tr> 
		<tr>
			<td>Title</td>
			<td><input class="form__input" type="text" name="title" value="<%= title %>" required oninvalid= "alert('Please enter the title');"></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><input type="text" name="description" value="<%= description %>"></td>
		</tr>
		<tr>
			<td> Price</td>
			<td><input type="text" name="price" value="<%= price %>" required oninvalid= "alert('Please enter the price');" > LKR</td>
		</tr>
		<tr>
			<td>Drawn Date</td>
			<td><input type="date" name="drawn_date" value="<%= drawn_date %>" min="1970-01-01" max="2021-04-22"></td>
		</tr>
		<tr>
			<td>Category</td>
			
			<td>
				<select name="category" id="category" value="<%= category %>" required oninvalid= "alert('Please choose a category');">
					<option value="Abstract">Abstract</option>
					<option value="Nature">Nature</option>
					<option value="Black and White">Black n White</option>
					<option value="Oil Painting">Oil painting</option>
		      		<option value="Watercolor">Watercolour</option>
		      		<option value="Postercolor">Postercolour</option>
		      		<option value="Acrylic">Acrylic</option>
		       		<option value="Pencil Sketch">Pencil sketch</option>
					<option value="Other">Other</option>
				</select>
			</td>
		</tr>	
		<tr>
			<td>Weight</td>
			<td><input type="number" name="weight" value="<%= weight %>"> kg</td>
		</tr>
		<tr>
			<td>Length</td>
			<td><input type="number" name="length" value="<%= length %>"> cm</td>
		</tr>
		<tr>
			<td>Width</td>
			<td><input type="number" name="width" value="<%= width %>"> cm</td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="text" name="image_url" value="<%= image_url %>" readonly></td>
		</tr>
		<tr>
			<td>Material</td>
			<td><input type="text" name="material" value="<%= material %>"></td>
		</tr>
		
		<tr>
			<td>Frame</td>
			<td><input type="text" name="frame" value="<%= frame %>"></td>
		</tr>
		
	</table>
	<br> --%>
	<input type="submit" name="submit" value="UPDATE" class="btn">
	
	</form>

	</div>

<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

<script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>

<script src="js/Gallery_JScript.js"></script>

</body>
</html>