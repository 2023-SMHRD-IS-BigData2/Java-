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

@WebServlet("/REVIEW_login")
public class REVIEW_login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int P_CODE = Integer.parseInt(request.getParameter("P_CODE"));
		
		PARKING vo = new PARKING(P_CODE);
		PARKING loginParking = new PARKING_DAO().loginParking(vo);
		System.out.println(P_CODE);
		if (loginParking != null) {
			// 주차장 로그인(?) 성공
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("Parking", loginParking);
			response.sendRedirect("./review_success.jsp");
		} else {
			System.out.println("로그인 실패...");
			response.sendRedirect("./review.html");
		}
	}
}
