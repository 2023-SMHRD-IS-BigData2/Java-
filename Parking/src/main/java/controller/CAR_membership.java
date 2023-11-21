package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PARKING;

@WebServlet("/CAR_membership")
public class CAR_membership extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String P_PLACE = request.getParameter("P_PLACE");
		String P_TYPE = request.getParameter("P_TYPE");
		String P_ADDRESS = request.getParameter("P_ADDRESS");
		String P_FULL = request.getParameter("P_FULL");
		String P_PRICE = request.getParameter("P_PRICE");
		String P_TIME = request.getParameter("P_TIME");
		String P_INFO = request.getParameter("P_INFO");
		String P_ABLE = request.getParameter("P_ABLE");
		
		//PARKING vo = new PARKING(P_PLACE,P_TYPE,P_ADDRESS,P_FULL,P_PRICE,P_TIME,P_INFO,P_ABLE);
		
	}
}
