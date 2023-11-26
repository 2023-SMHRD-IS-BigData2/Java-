package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BOOKING;
import model.BOOKING_DAO;
import model.PARKING;
import model.PARKING_DAO;

@WebServlet("/Booking_Login_ALL")
public class Booking_Login_ALL extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String ID = request.getParameter("ID");
		System.out.println(ID);
		
//		BOOKING vo =  new BOOKING(ID);
		List<BOOKING> logniBooking = new BOOKING_DAO().loginBooking(ID);
		System.out.println(logniBooking.size());
		System.out.println(ID.toString());
		
		if (logniBooking != null) {
			// 예약내역 주차장 로그인(?) 성공
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("Booking", logniBooking);
			response.sendRedirect("./BookingAll.jsp");
		} else {
			System.out.println("로그인 실패...");
			response.sendRedirect("./BookingloginAll.jsp");
		}
	}

}
