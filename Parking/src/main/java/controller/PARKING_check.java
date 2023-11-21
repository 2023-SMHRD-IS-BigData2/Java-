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
		String P_YN = request.getParameter("P_YN");
		int P_COUNT = Integer.parseInt(request.getParameter("P_COUNT"));
		int P_POS = Integer.parseInt(request.getParameter("P_POS"));
		
		PARKING updateParking  = new PARKING(P_YN,P_COUNT,P_POS);
		System.out.println(updateParking.toString());
		
		int cnt = new PARKING_DAO().updateParking(updateParking);
		
		if (cnt > 0) {
			System.out.println("수정 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("updateParking", updateParking);
			response.sendRedirect("./parking_main.html");
		} else {
			System.out.println("수정 실패..");
			response.sendRedirect("./parkingCheck.html");
		}
	}
}
