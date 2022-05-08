<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/req2.css">
<link type="text/css" rel="stylesheet" href="../css/frontpage.css"/>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Contact us </title>

<script src="js/Request.js"></script>
<script src="js/request22.js"></script>
<script src="js/Gallery_JScript.js"></script> 

<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>


<script>
	function phonenumber(phone)
	{
	  var phone = /^\d{10}$/;
	  if((inputtxt.value.match(phone))){
		 return true;
	}
	  else
	        {
	        alert("Phone number should contain TEN numbers");
	        return false;
	        }
	}
</script>
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
</head>
<body>

   
   <div style="margin-left: 100px;"><br><br>
   <h2 style="text-align:Left; padding-left: 100px;">Welcome to Custom Art Page</h2> <hr style=" width:90%;
        background: black;
        margin-bottom: 20px;"> </hr><br>
      <h3 style="text-align:Left; padding-left: 100px;color: white;">Let's Get Started with Your Message!</h3>
   
   
      <form name="requestForm" action="RequestServlet" method="post" class="specialRForm" >
      
      <fieldset>
      <legend style="padding:20px 0; font-size:30px;"></legend>
      
      
            <label>Name</label><br>
            <input type="text" placeholder="Eg: Dilendra" name="name" class="SRInput" class="form__input" required oninvalid= "alert('Please enter the Name');"><br><br>
            <label>Phone Number</label><br>
            <input type="" placeholder="EG:077xxxxxxx" name="phone" class="SRInput" class="form__input" pattern="[0][0-9]{9}" required oninvalid= "alert('Please enter valid Phone Number');" ><br><br>
            <label>Email</label><br>
            <input type="email" placeholder="Eg: xyz@gmail.com" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="SRInput" class="form__input" required oninvalid= "alert('Please enter the Email Address');" title="Enter valid email"><br><br>
            <label>Message</label><br>
            <textarea placeholder="Write your message here" name="message" class="SRInput" class="form__input"></textarea><br><br>
            <label>Additional References</label><br>
            <input type="file" onchange="readURL(this);" name="photograph" class="form__input"><br>
            <img id="imageGallery" src="#" alt="Selected Image" /> <br><br>
            <!-- <input type="text" placeholder="photograph" name="photograph"> -->

            <input type="hidden" name="userID" value="${userID}" readonly>
            <label>Select Artist</label>

            	<%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
            	<select id="list" name="artist_name">
            		<%
            			try{
            				Class.forName("com.mysql.jdbc.Driver");
            				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/colorlib","root","root");
            				Statement st = con.createStatement();
            				String query = "select * from artist";
            				ResultSet rs = st.executeQuery(query);
            				while(rs.next()){
            					%>
            					<option value="<%=rs.getString("name") %>"><%=rs.getString("name") %></option>
            					<%
            				}
            				
            			}catch (Exception e){
            				
            			}
            		%>
            	</select><br><br>

                        <label>Address</label><br>
                        <div style="float:left;">
            <input type="text" placeholder="Line 01" name="add_line_01">
            <input type="text" placeholder="Line 02" name="add_line_02">
            <input type="number" placeholder="Postal Code" name="postal_code">   
            <input type="text" placeholder="Province" name="province">
            <input type="text" placeholder="City" name="city">
            <input type="text" placeholder="Country" name="country"> <br> <br>
            
            <input class="button button2" type="reset" name="Reset" value="Reset">
            <input class="button1 button2" type="submit" name="submit" value="Send">
            </div>
            
            </fieldset>
         </form>
   
   
   </div>
  
	
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	
<style>

.button {
  background-color: #3399FF; /* Green */
  width:300px;
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
.button1 {
  background-color: #FF6666; /* Green */
    width:300px;
  
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