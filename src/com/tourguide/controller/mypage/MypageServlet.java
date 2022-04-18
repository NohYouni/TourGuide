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
import com.tourguide.dao.RvDtlDAO;
import com.tourguide.dto.RvDtlVO;


@WebServlet("/mypage")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		String mmId = (String)session.getAttribute("mmId");
		System.out.println(mmId);

		if(mmId==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		//마이페이지에 노출될 리뷰목록 가져오기

		RvDtlDAO rdao = new RvDtlDAO();
		List<RvDtlVO> rvlists = new ArrayList<RvDtlVO>();
		rvlists = rdao.rvDtlGetMember(mmId);
		
		request.setAttribute("rvlists", rvlists);
		
		
		//마이페이지 노출될 찜목록 가져오기
		FvLkDAO ldao = new FvLkDAO();
		List<String> zzlists = new ArrayList<String>();
		zzlists = ldao.FvLkMyList(mmId);
		request.setAttribute("zzlists", zzlists);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/mypage.jsp");
		dispatcher.forward(request, response);
		}
	}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

}
