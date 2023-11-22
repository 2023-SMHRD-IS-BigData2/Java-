package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BOOKING;
import model.BOOKING_DAO;

@WebServlet("/booking_time")
public class BOOKING_time extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String B_DATE = request.getParameter("B_DATE");
		String B_EXDATE = request.getParameter("B_EXDATE");
		String B_TIME = request.getParameter("B_TIME");
		
		BOOKING vo = new BOOKING(B_DATE,B_EXDATE,B_TIME);
		
		int cnt = new BOOKING_DAO().joinBooking(vo);
		
		if(cnt>0) {
			System.out.println("완료");
			response.sendRedirect("./booking.html");
		}else {
			System.out.println("실패");
			response.sendRedirect("./booking_time.jsp");
		}
	}
}
