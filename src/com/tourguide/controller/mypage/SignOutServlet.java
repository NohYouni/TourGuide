package com.tourguide.controller.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;


@WebServlet("/signOut")
public class SignOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession() ;
		String id = (String) session.getAttribute("mmId");
		//아웃내용은 본인탈퇴 로 변경
		//상태코드는 비회원으로 변경
		dao.mmMstSignOut(id, 0);
		session.removeAttribute("stsCode");
		session.removeAttribute("mmId");
//		session.setAttribute("stsCode",2);
//		session.setAttribute("outCode",0);
		RequestDispatcher dispatcher = request.getRequestDispatcher("../index.jsp");
		dispatcher.forward(request, response);
			
		}
	}

