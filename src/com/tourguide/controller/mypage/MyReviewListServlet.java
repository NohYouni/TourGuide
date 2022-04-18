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

import com.tourguide.dao.RvDtlDAO;
import com.tourguide.dto.RvDtlVO;

/**
 * Servlet implementation class MyReviewServlet
 */
@WebServlet("/myReviewList")
public class MyReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String mmid = (String) session.getAttribute("mmid");
		if(mmid==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		RvDtlDAO rdao = new RvDtlDAO();
		List<RvDtlVO> rvlists = new ArrayList<RvDtlVO>();
		rvlists = rdao.rvDtlGetMember(mmid);
		request.setAttribute("rvlists", rvlists);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/myReviewList.jsp");
		dispatcher.forward(request, response);
	}
	}
}
