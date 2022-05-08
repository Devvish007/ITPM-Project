<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://kit.fontawesome.com/27abd15fc0.js" crossorigin="anonymous"></script>
	<style type="text/css">
	

	</style>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    </head>

<body>
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
</nav>
<br><br>
<div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;"><br><br><br>
       <i class="fa-solid fa-check"></i>
      </div>

        <h1>Success</h1> 
        <p>Your Request Has Been Updated<br/> we'll be in touch shortly!</p><p>For now you can check your requests here!</p><br>
              <button type="button" class="button button2"
						onclick="location.href = 'requestCusLogin'">View My Requests</button>
      </div>
	 <style>
 body {
	         text-align: center;
    min-height: 110vh;
    background-color: #4ca1af;
    background-image: linear-gradient(135deg, #4ca1af 0%, #c4e0e5 100%);
}
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
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

