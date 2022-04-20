package com.tourguide.controller.event;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.EvappDAO;
import com.tourguide.dto.EvappVO;


@WebServlet("/event")
public class EventServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String mmId = (String) session.getAttribute("mmId");
		
		String evCnts = request.getParameter("evCnts");
		
		EvappVO evo = new EvappVO();
		EvappDAO edao = new EvappDAO();
		evo.setEvCode("이벤트코드");
		evo.setEvNo(0);
		evo.setMmId("아이디");
		evo.setEvCnts("이벤트내용");
		evo.setEtc("기타내용");
		
		
		int result = edao.evappjoin(evo);
		
		if(result == 1) {
			
			System.out.println("정상적인 이벤트참여");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/myReviewList.jsp");
		dispatcher.forward(request, response);
	}

}
