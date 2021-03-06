package com.tourguide.controller.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.FvLkDAO;

/**
 * Servlet implementation class MyZzimServlet
 */
@WebServlet("/myZzimList")
public class MyZzimListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String mmId = (String) session.getAttribute("mmId");
		if(mmId==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		List<String> zzlists = new ArrayList<String>();
		FvLkDAO dao = new FvLkDAO();

		zzlists = dao.FvLkMyList(mmId);
		
		request.setAttribute("zzlists", zzlists);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/myZzim.jsp");
		dispatcher.forward(request, response);
			
	
		}
	}

}
