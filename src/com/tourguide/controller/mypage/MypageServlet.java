package com.tourguide.controller.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.FvLkDAO;
import com.tourguide.dao.RvDtlDAO;
import com.tourguide.dto.FvLkVO;
import com.tourguide.dto.RvDtlVO;

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/mypage")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("mmId");
		
		
		//마이페이지에 노출될 리뷰목록 가져오기
		RvDtlVO rvo = new RvDtlVO();
		RvDtlDAO rdao = new RvDtlDAO();
		
		//마이페이지 노출될 찜목록 가져오기
		FvLkVO lvo = new FvLkVO();
		FvLkDAO ldao = new FvLkDAO();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("mypage/mypage.jsp");
		dispatcher.forward(request, response);
		}

}
