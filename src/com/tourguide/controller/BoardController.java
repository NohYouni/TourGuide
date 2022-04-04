package com.tourguide.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.service.BoardSv;
import com.tourguide.service.BoardService;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/festival/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BoardController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doBoard(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doBoard(request, response);
	}
	
	protected void doBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = null;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		String reqURL = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURL.substring(contextPath.length());
		System.out.println(cmd);	
		BoardSv bs = new BoardService();

		if(cmd.equals("/festival/main")){
			request.getParameter("");
			request.setAttribute("list", bs.getAll("20", "0"));
			System.out.println(bs.getAll("20", "0"));
			rd = request.getRequestDispatcher("/board/boardList.jsp");
			rd.forward(request, response);
			
		}else if(cmd.equals("/festival/detail")){		
			String contentid = request.getParameter("contentid");
			String contentTypeId = request.getParameter("contentTypeId");
			String mapx = request.getParameter("mapx");
			String mapy = request.getParameter("mapy");
			request.setAttribute("detail", bs.getOne1(contentid).get(0));
			request.setAttribute("review", bs.getReview(contentid));
			request.setAttribute("seeSight", bs.getSight("10", mapx, mapy));
			rd = request.getRequestDispatcher("/board/boardDetail.jsp");
			rd.forward(request, response);
			
		}
	}

}


