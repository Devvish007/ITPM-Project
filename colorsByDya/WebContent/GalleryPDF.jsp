<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.buttonpdf {
  position: relative;
  background-color: #6e6e6e;
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
table {
    margin: auto;
  	width: 40%;
  	padding: 10px;
}
th, td {
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
			
background-color: white;
  text-align: left;
  border-bottom: 1px solid #ddd;
  height:60px;
}
</style>
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">

<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script>
<meta charset="ISO-8859-1">
<title>Gallery report</title>
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
        <li class="nav-item "><a href="index2.jsp" class="nav-link"><h5>Home</h5> <span class="sr-only">(current)</span></a></li>
        <li class="nav-item"><a href="#" class="nav-link"><h5>About</h5></a></li>
        <li class="nav-item"><a href="Artworks.jsp" class="nav-link"><h5>Gallery</h5></a></li>
        <li class="nav-item active"><a href="SpecialRequest.jsp" class="nav-link"><h5>Contact</h5></a></li>
      </ul>
    </div>
  </div>
</nav> <br><br>
	<br><br>
	
	<h1 style="text-align:centre; padding-left: 20px;">ColorLib Fine Arts</h1> <h2>Gallery Report</h2> <hr style=" width:90%;
        background: black;
        margin-bottom: 20px;"> </hr><br>
	
	<button class="buttonpdf" onclick="generate_PDF();">Download Report</button>
	<br><br>
	
	<div id="art">
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
            
       
    <%
        try
        {
        	//db connection
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/colorbydiyaa";
            String username="root";
            String password="root";
            
                        
            Connection conn=DriverManager.getConnection(url, username, password);
            Statement stmt=conn.createStatement();
            
            //sql statement
            String sql = " SELECT  * FROM painting";
                
            ResultSet rs = stmt.executeQuery(sql);
            
        %>
                <table>
                    <tr>
                    	<th>ID</th>
                        <th>Title</th>    
                        <th>Price (LKR) </th>
                        <th>Category</th>
                    </tr>
                    
        <% while(rs.next())
            { 
                %>
            <tr>
                <td>  <%=rs.getInt("painting_id")%></td>
                <td>  <%=rs.getString("title")%></td>
                <td>  <%=rs.getString("price")%></td>
                <td>  <%=rs.getString("category")%></td>
        	</tr>
            <%
            } 
        	//END OF WHILE LOOP
            %>
            </table>
            
            
    <%         
            rs.close();
            stmt.close();
            conn.close();
        }
    
        catch(Exception e)
        {
            e.printStackTrace();
        }
        %>
        
    </div>
    
    <div id="artRep"></div>


	<script src="js/jquery.min.js"></script>

 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

 
	<script type="text/javascript">

 

    function generate_PDF(){
        
        var doc = new jsPDF();
        var elementHTML = $('#art').html(); 
        
        var specialElementHandlers = {
            '#artRep': function (element, renderer) {
                return true;
            }
        };
        
        doc.fromHTML(elementHTML, 30, 15, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 
        doc.save('GalleryReport.pdf');
        
    }
</script>
	
</body>
</html>