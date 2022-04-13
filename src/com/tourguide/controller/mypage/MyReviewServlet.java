package com.tourguide.controller.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyReviewServlet
 */
@WebServlet("/myReview")
public class MyReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//더보기를 눌렀을때 리뷰 상세내용을 저장해야겠네
		RequestDispatcher dispatcher = request.getRequestDispatcher("mypage/myReview.jsp");
		dispatcher.forward(request, response);
	}

}
