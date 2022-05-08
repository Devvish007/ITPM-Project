package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeliveryLoginservlet")
public class DeliveryLoginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		        String username = request.getParameter("uid");
		        String password = request.getParameter("pass");
		        
				try {
					
		            List<Delivery> delivDetails = DeliveryDBUtil.validate(username, password);
		            request.setAttribute("delivDetails", delivDetails);
				 }
			    catch (Exception e) {
			    	
			    	e.printStackTrace();
					
				}
				
		        RequestDispatcher dis = request.getRequestDispatcher("deliveryUser.jsp");
		        dis.forward(request, response);
		        
		        
	}

}
