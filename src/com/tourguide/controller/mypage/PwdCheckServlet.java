package com.tourguide.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.MmMstDAO;


@WebServlet("/pwdCheck")
public class PwdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession();
		String mmId = (String) session.getAttribute("mmId");
		if(mmId==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		String pwd = request.getParameter("pwd");
		
		int result = dao.mmMstPwdCheck(mmId, pwd);
		
		if(result ==1) {
		System.out.println("정상적인 비밀번호");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/pwdChange.jsp");
			dispatcher.forward(request, response);
		
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>alert('비밀번호가 틀렸습니다'); location.href='mypage/pwdCheck.jsp';</script>");
			System.out.println("비밀번호 틀렸음");			
		}
		}
	}

}
