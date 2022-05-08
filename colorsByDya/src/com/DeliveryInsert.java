package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliveryInsert")
public class DeliveryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String postalCode = request.getParameter("postalCode");
		String region = request.getParameter("region");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		
		boolean isTrue;
		title = "Ms";
		isTrue = DeliveryDBUtil.insertDelivery(title, name, add1, add2, postalCode, region, city, country);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("DeliveryView.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
