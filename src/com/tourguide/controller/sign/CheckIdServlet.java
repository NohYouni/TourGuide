package com.tourguide.controller.sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;

@WebServlet("/checkId")
public class CheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		String mmId = request.getParameter("mmId");
		
		MmMstDAO dao = new MmMstDAO();
		
		int result = dao.MmMstIdChk(mmId);
		request.setAttribute("mmId", mmId);
		request.setAttribute("result", result);
		
		// 이미 가입된 회원인지 확인
		if(result == 1) {
			request.setAttribute("message", "이미 사용중인 아이디");
			out.print("이미 사용중인 아이디");
		}else {
			request.setAttribute("message", "아이디 사용가능");
			out.print("아이디 사용가능");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/sign/checkId.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
