package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/requestCusLogin")
public class requestCusLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		System.out.println("UserID in custLogin: " + userID);
		
		String cusUsername = RequestDBUtil.getUserName(userID);
		request.setAttribute("cusUsername", cusUsername);
		
		try {
			 List<Request> reqCusList = RequestDBUtil.validateCus(userID);
			 request.setAttribute("reqCusList", reqCusList);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("RAllRequestView.jsp");
		dis.forward(request, response);
	}

}
