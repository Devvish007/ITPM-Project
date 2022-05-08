package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteDeliveryServlet")
public class DeleteDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteDeliveryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID = request.getParameter("delid");
		boolean isTrue;
		
		isTrue = DeliveryDBUtil.deleteDelivery(deliveryID);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("DeliveryInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Delivery> delDetails = DeliveryDBUtil.getDeliveryDetails(deliveryID);
			request.setAttribute("delDetails", delDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("DeliveryView.jsp");
			dispatcher.forward(request, response);
		}
	}

}
