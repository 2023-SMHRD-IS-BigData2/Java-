package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PARKING;
import model.PARKING_DAO;

@WebServlet("/PARKING_check")
public class PARKING_check extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String P_PLACE = request.getParameter("P_PLACE");
		String P_TYPE = request.getParameter("P_TYPE");
		String P_ADDRESS = request.getParameter("P_ADDRESS");
		String P_FULL = request.getParameter("P_FULL");
		String P_PRICE = request.getParameter("P_PRICE");
		String P_TIME = request.getParameter("P_TIME");
		String P_ABLE = request.getParameter("P_ABLE");
		String P_INFO = request.getParameter("P_INFO");
		String P_YN = request.getParameter("P_YN");
		int P_COUNT = Integer.parseInt(request.getParameter("P_COUNT"));
		int P_POS = Integer.parseInt(request.getParameter("P_POS"));
		
		PARKING updateParking  = new PARKING(P_PLACE,P_TYPE,P_ADDRESS,P_FULL,P_PRICE,P_TIME,P_ABLE,P_INFO,P_YN,P_COUNT,P_POS);
		System.out.println(updateParking.toString());
		
		int cnt = new model.PARKING_DAO().updateParking(updateParking);
		
		if (cnt > 0) {
			System.out.println("수정 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("Parking", updateParking);
			response.sendRedirect("./parking_main.jsp");
		} else {
			System.out.println("수정 실패..");
			response.sendRedirect("./parkingCheck.jsp");
		}
	}
}
