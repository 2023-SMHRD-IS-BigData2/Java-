package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BOOKING;
import model.BOOKING_DAO;
import model.MEMBER;
import model.PARKING;

@WebServlet("/BOOKING_time")
public class BOOKING_time extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		PARKING parking = (PARKING)session.getAttribute("Parking");
//		MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");		
		request.setCharacterEncoding("UTF-8");
		
		String ID = request.getParameter("ID");
		String B_EXDATE = request.getParameter("B_EXDATE");
		String B_TIME = request.getParameter("B_TIME");
		String B_PLACE =request.getParameter("B_PLACE");
		String B_PRICE = request.getParameter("B_PRICE");
		String B_YN = request.getParameter("B_YN");
		int B_EXTIME =Integer(request.getParameter("B_EXTIME"));
		
		BOOKING vo = new BOOKING(0,ID,null,B_EXDATE,B_TIME,B_PLACE,B_PRICE,B_YN,B_EXTIME);
		int cnt = new BOOKING_DAO().joinBooking(vo);
		System.out.println("예약 정보");
		System.out.println(vo.toString());
		
		if(cnt>0) {
			System.out.println("완료");
			response.sendRedirect("./booking.html");
		}else {
			System.out.println("실패");
			response.sendRedirect("./booking_time.jsp");
		}
	}

	private int Integer(String parameter) {
		// TODO Auto-generated method stub
		return 0;
	}
}
