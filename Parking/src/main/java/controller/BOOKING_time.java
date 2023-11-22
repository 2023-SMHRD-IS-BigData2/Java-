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
import model.PARKING;

@WebServlet("/booking_time")
public class BOOKING_time extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BOOKING booking = (BOOKING)session.getAttribute("Booking");
		
		request.setCharacterEncoding("UTF-8");
		int B_NUM = Integer.parseInt(request.getParameter("B_NUM")); 
		String ID = request.getParameter("ID");
		String B_DATE = request.getParameter("B_DATE");
		String B_EXDATE = request.getParameter("B_EXDATE");
		String B_TIME = request.getParameter("B_TIME");
		String B_PLACE = request.getParameter("B_PLACE");
		String B_PRICE = request.getParameter("B_PRICE");
		String B_YN = request.getParameter("B_YN");
		
		BOOKING vo = new BOOKING(B_NUM,ID,B_DATE,B_EXDATE,B_TIME,B_PLACE,B_PRICE,B_YN);
		int cnt = new BOOKING_DAO().joinBooking(vo);
		
		if(cnt>0) {
			System.out.println("완료");
			session.setAttribute("Booking", vo);
			response.sendRedirect("./booking.html");
		}else {
			System.out.println("실패");
			response.sendRedirect("./booking_time.jsp");
		}
	}
}
