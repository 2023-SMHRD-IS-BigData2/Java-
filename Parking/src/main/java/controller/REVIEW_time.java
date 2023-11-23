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
import model.REVIEW;
import model.REVIEW_DAO;

@WebServlet("/REVIEW_time")
public class REVIEW_time extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String ID = request.getParameter("ID");
			String R_1 = request.getParameter("R_1");
			String R_2 = request.getParameter("R_2");
			String R_3 = request.getParameter("R_3");
			String R_4 = request.getParameter("R_4");
			String R_5 = request.getParameter("R_5");
		
		REVIEW vo =  new REVIEW(ID,R_1,R_2,R_3,R_4,R_5);
		REVIEW loginREVIEW = new REVIEW_DAO().loginREVIEW(vo);
		
		if (loginREVIEW != null) {
			// 주차장 로그인(?) 성공
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginREVIEW", loginREVIEW);
			response.sendRedirect("./review.html");
		} else {
			System.out.println("로그인 실패...");
			response.sendRedirect("./review_success.jsp");
		}
	}
}
