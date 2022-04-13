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


@WebServlet("/myZzimOff")
public class MyZzimOffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("mmId");
		String fvno = request.getParameter("fvno") ; // 행사 번호에 저장되어있는 값을 불러와서 적고싶은데..
		FvLkDAO dao = new FvLkDAO();

		int result = dao.FvLkOff(id, fvno);
		if(result==1) {
			System.out.println("정상적으로 삭제됨");
		}else {
			System.out.println("어딘가 문제가 생겼습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("../myZzim");
		dispatcher.forward(request, response);

		
	}

}
