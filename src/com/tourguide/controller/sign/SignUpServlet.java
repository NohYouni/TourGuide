package com.tourguide.controller.sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;

@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("sign/signUp.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String mmId = request.getParameter("mmId");
		String mmPwd = request.getParameter("mmPwd");
		String mmEmail = request.getParameter("mmEmail");
		
		MmMstDAO dao = new MmMstDAO();
		MmMstVO vo = new MmMstVO();
		
		vo.setMmId(mmId);
		vo.setMmPwd(mmPwd);
		vo.setMmEmail(mmEmail);
		int result = dao.mmMstInsert(vo);
		
		// 회원 가입 성공 - DB에 성공적으로 저장완료
		if(result == 1) {
			request.setAttribute("message", "회원가입에 성공했습니다");
			System.out.println("회원가입에 성공했습니다");
		}else {		// 회원 가입 실패 - DB에 저장 실패
			request.setAttribute("message", "회원가입에 실패했습니다");
			System.out.println("회원가입에 실패했습니다");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}			
}

