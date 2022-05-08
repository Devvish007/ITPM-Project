<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Report</title>

<style>
.btn1{
	width: 17%;
	padding: 0.5rem 1rem;
	background-color: #2ecc71;
	color: #fff;
	font-size: 1.1rem;
	border: none;
	outline: none;
	cursor: pointer;
	transition: .3s;
	margin-left: 10%;
	margin-top: 10px;
}
.btn1:hover{
    background-color: #27ae60;
}
</style>
</head>
<body>
 


    <div id="del">
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
            
                
        <h1>Delivery report</h1> <br>
    
    <%
        try
        {
        	//db connection//
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/deliverydb";
            String username="root";
            String password="root";
            
                        
            Connection conn=DriverManager.getConnection(url, username, password);
            Statement stmt=conn.createStatement();
            
            //sql statement//
            String sql = " SELECT  * FROM delivery";
                
            ResultSet rs = stmt.executeQuery(sql);
            
        %>
                <table>
                    <tr>
                        <th>DeliveryID</th>    
                        <th>Full Name</th>
                        <th>Address 01</th>
                        <th>Address 02</th>
                    </tr>
                    
        <% while(rs.next())
            { 
                %>
            <tr>
                <td>  <%=rs.getInt("deliveryID")%></td>
                <td>  <%=rs.getString("name")%></td>
                <td>  <%=rs.getString("add1")%></td>
                <td>  <%=rs.getString("add2")%></td>
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
    
    <div id="delRep"></div>


	<script src="js/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

 
   <script type="text/javascript">

    function generate_PDF(){
        
        var doc = new jsPDF();
        var elementHTML = $('#del').html(); 
        
        var specialElementHandlers = {
            '#delRep': function (element, renderer) {
                return true;
            }
        };
        
        doc.fromHTML(elementHTML, 30, 15, {
            'width': 500,
            'elementHandlers': specialElementHandlers
        });

 
        doc.save('DeliveryDetails.pdf');
        
    }
</script>
<br>
<button onclick="generate_PDF();" class="btn1">Download Report</button> 
</body>
</html>
