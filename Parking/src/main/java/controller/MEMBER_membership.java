package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MEMBER;
import model.MEMBER_DAO;

@WebServlet("/MEMBER_membership")
public class MEMBER_membership extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("[MEMBER_membership]");
		// 요청데이터 받기
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String NAME = request.getParameter("NAME");
		String TEL = request.getParameter("TEL");
		String CAR_NUM = request.getParameter("CAR_NUM");
		String CAR_TYPE = request.getParameter("CAR_TYPE");
		System.out.println(ID);
		
		MEMBER vo = new MEMBER(ID, PW, NAME, TEL,CAR_NUM,CAR_TYPE);
		
		//회원가입
		int cnt = new MEMBER_DAO().joinMember(vo);
		
		if(cnt>0) {
			System.out.println("성공");
			response.sendRedirect("./main.jsp");
		}else {
			response.sendRedirect("./membership.jsp");
		}
		
	}
}
