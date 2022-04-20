package com.tourguide.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.service.BoardService;
import com.tourguide.service.BoardSv;

@WebServlet("/s")
public class HomController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public HomController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("야");
		BoardSv bs = new BoardService();
		
		//String contentid = bs.getBestContentId();		
		//request.setAttribute("festival", bs.getOne1(contentid));
		System.out.println(bs.getAll("5", "0"));
		request.setAttribute("list", bs.getAll("5", "0"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/test2.jsp");
		dispatcher.forward(request, response);
	}


}
