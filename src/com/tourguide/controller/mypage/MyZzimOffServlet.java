package com.tourguide.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

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
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String mmId = (String) session.getAttribute("mmId");
		String fvno = request.getParameter("fvNo") ; 
		FvLkDAO dao = new FvLkDAO();
		int result = dao.FvLkOff(mmId, fvno);
		System.out.println(result);
		if(result==1) {
			System.out.println("정상적으로 삭제됨");
			out.print("<script>alert('찜을삭제하였습니다.'); location.href='/myZzimList';</script>");
		}else {
			System.out.println("어딘가 문제가 생겼습니다.");
			out.print("<script>alert('잘못된 입력입니다.'); location.href='/myZzimList';</script>");
		}
	
	}

}
