package com.tourguide.controller.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.FvLkDAO;
import com.tourguide.service.BoardService;
import com.tourguide.service.BoardSv;

@WebServlet("/fvLkInsert")
public class FvLkInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
				
		String contentid = request.getParameter("contentid");
		String mapx = request.getParameter("mapx");
		String mapy = request.getParameter("mapy");
		BoardSv bs = new BoardService();
		
		request.setAttribute("fvNo", contentid);
		request.setAttribute("detail", bs.getOne1(contentid).get(0));
		request.setAttribute("review", bs.getReview(contentid));
		
		if(!mapx.equals("undefined")) {
			request.setAttribute("seeSight", bs.getSight("10", mapx, mapy));
		}
		
		FvLkDAO dao = new FvLkDAO();
		HttpSession session = request.getSession();
		String mmId = (String)session.getAttribute("mmId");
							
		if(dao.FvLkOn(mmId, contentid) != 1) {
			request.setAttribute("fvLkOn", "y");
			out.print("<script>");
			out.print("alert('d')");
			out.print("</script>");
		}

		FvLkDAO fvLk = new FvLkDAO();
		request.setAttribute("like", fvLk.fvLkCount(contentid));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/boardDetail.jsp");
		dispatcher.forward(request, response);
	}

}
