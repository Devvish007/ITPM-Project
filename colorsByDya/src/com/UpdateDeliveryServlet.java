package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateDeliveryServlet")
public class UpdateDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDeliveryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID = request.getParameter("delid");
		
		String name = request.getParameter("name");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String postalCode = request.getParameter("postalCode");
		String region = request.getParameter("region");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		
		boolean isTrue;
		
		isTrue = DeliveryDBUtil.updateDelivery(deliveryID, name, add1, add2, postalCode, region, city, country);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("DeliveryView.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
