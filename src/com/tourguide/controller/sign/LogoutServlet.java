package com.tourguide.controller.sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
//		out.print("로그아웃 - get");
		
		HttpSession ses = request.getSession(); // 세션 객체생성
		ses.invalidate();
		
//		response.sendRedirect("index.jsp");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html;charset=UTF-8");
//		request.setCharacterEncoding("UTF-8");

//		HttpSession session = request.getSession(); // 세션 객체생성
//		session.invalidate();
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//		dispatcher.forward(request, response);
	}
}
