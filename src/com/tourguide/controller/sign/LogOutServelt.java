package com.tourguide.controller.sign;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutServelt
 */
@WebServlet("/logOut")
public class LogOutServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		
		session.removeAttribute("mmId");
		session.removeAttribute("mmPwd");
		session.removeAttribute("mmEmail");
		session.removeAttribute("joinDate");
		session.removeAttribute("llDate");
		session.removeAttribute("stsCode");
		session.removeAttribute("outDate");
		session.removeAttribute("outCode");
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

}
