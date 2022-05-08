package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/requestNewSearch")
public class requestNewSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("search");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/colorlib?autoReconnect=true&useSSL=false", "root", "root");
			pst = con.prepareStatement(
					"select request_id, name, phone, email,message from special_request where name = ?");
			pst.setString(1, name);
			rs = pst.executeQuery();
			
			out.println("<style>");
			out.println("tr {");
			out.println("color:black;");
			out.println("background-color:white;");
			out.println("border: 1px solid black;");
			out.println("}");
			out.println("</style>");

			out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x\" crossorigin=\"anonymous\">");
			out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>");
			out.println("<br>");
			out.println("<br>");
			out.println("<br>");
			out.println("<br>");
			
			out.println("<style>");
			out.println("body {");
			out.println("background-image: url('./images/FlVC0S.jpg');");
			out.println("background-image:./images/FlVC0S.jpg;");
			out.println("background-repeat: no-repeat;");
			out.println("background-size: cover;");
			out.println("}");
			out.println("</style>");
			
			out.println("<center> <h2> Request Results </h2></center>");
			out.println("<br>");
			
			out.println("<center>");
			out.println("<table width=70% >");
			out.println("<tr> <td colspan=4>");
			out.println("</td></tr>");
			out.println("<tr>");
			out.println("<th> request_id </th>");
			out.println("<th> name </th>");
			out.println("<th> phone </th>");
			out.println("<th> email </th>");
			out.println("<th> message </th>");
			out.println("</tr>");

			while (rs.next()) {

				out.println("<tr>");
				out.println("<td>" + rs.getString("request_id") + "</td>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("phone") + "</td>");
				out.println("<td>" + rs.getString("email") + "</td>");
				out.println("<td>" + rs.getString("message") + "</td>");

				out.println("</tr>");

			}
			out.println("</table>");
			out.println("</center>");
			
			
			
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
