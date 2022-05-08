<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/frontpage.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/home.css">

<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script>
<meta charset="ISO-8859-1">
<title>req report</title>

 
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
</nav> <br><br>

	<h1 style="text-align:Left; padding-left: 80px;">Download Special Requests</h1> <hr style=" width:90%;
        background: black;
        margin-bottom: 20px;"> </hr><br>

    <button id="disButton" style=" margin-left:70px;" class="button button2" onclick="generate_PDF();">Download Report</button> <br><br>


    <div id="eve">
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
            
              
    
    <%
        try
        {
        	//db connection
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/colorlib";
            String username="root";
            String password="root";
            
                        
            Connection conn=DriverManager.getConnection(url, username, password);
            Statement stmt=conn.createStatement();
            
            //sql statement
            String sql = " SELECT  * FROM special_request";
                
            ResultSet rs = stmt.executeQuery(sql);
            
        %>
                <table>
                    <tr>
                        <th>ID</th>    
                        <th>Name</th>
                        <th>message</th> 
                    </tr>
                    
        <% while(rs.next())
            { 
                %>
            <tr>
                <td>  <%=rs.getInt("request_id")%></td>
                <td>  <%=rs.getString("name")%></td>
                <td>  <%=rs.getString("message")%></td>
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
    
    <div id="eveRep"></div>


	<script src="js/jquery.min.js"></script>

 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

 
	<script type="text/javascript">

 

    function generate_PDF(){
        
        var doc = new jsPDF();
        var elementHTML = $('#eve').html(); 
        
        var specialElementHandlers = {
            '#eveRep': function (element, renderer) {
                return true;
            }
        };
        
        doc.fromHTML(elementHTML, 30, 15, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 
        doc.save('ReqReport.pdf');
        
    }
</script>

 <style>
h1{
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;}

table {
    margin: auto;
  width: 90%;
  padding: 10px;
}
th, td {
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;

background-color: white;
  text-align: left;
  border-bottom: 1px solid #ddd;
  height:60px;
}
.center {
  margin: auto;
  width: 70%;
  padding: 10px;
  background-color: rgb(0 0 0 / 8%);
  
}
input {
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
  height:80%;
	border:none;
  width: 100%;
}
.button {
 height:60px;
  margin: 60px;
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
.navbar {
    height: 100px !important; /*i assume your navbar size 100px*/
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>	

</body>
</html>