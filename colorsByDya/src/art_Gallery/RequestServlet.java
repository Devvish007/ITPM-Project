package art_Gallery;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
//import java.io.InputStream;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;



@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			
			
		String name = request.getParameter("name");
	    String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
	    String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		int userID =Integer.parseInt(request.getParameter("userID"));
		String artist_name_list=" ";
	      response.setContentType("text/html");
	      PrintWriter pw = response.getWriter();
	      String[] artist_name = request.getParameterValues("artist_name");
	      for(int i=0; i<artist_name.length; i++){artist_name_list+=artist_name[i]+" ";
	      }
		
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.insertSRequest(name, phone, email, message, photograph, add_line_01, add_line_02, postal_code, province, city, country,userID,artist_name_list);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("requestPlaced.jsp");
			dis.forward(request, response);

		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("requestUnsuccess.jsp");
			dis2.forward(request, response);
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
