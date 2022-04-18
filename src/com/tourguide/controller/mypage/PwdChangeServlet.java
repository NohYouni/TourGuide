package com.tourguide.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.MmMstDAO;

/**
 * Servlet implementation class ChangePwdServlet
 */
@WebServlet("/pwdChange")
public class PwdChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession() ;
		String mmId = (String) session.getAttribute("mmId");
		if(mmId==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		String pwd = request.getParameter("mmPwd");
		String newPwd = request.getParameter("newPwd");
		int check = 0;
		check = dao.mmMstPwdCheck(mmId, pwd);
		if(!pwd.equals(newPwd)) {
		
		if(check == 1) {
		dao.mmMstUpdate(mmId, newPwd);
		out.print("<script>alert('비밀번호가 변경되었습니다'); location.href='mypage';</script>");
		}else {
			out.print("<script>alert('비밀번호가 틀렸습니다'); location.href='mypage/pwdChange.jsp';</script>");
			System.out.println("비밀번호가 틀렸습니다.");
		}
		}else {
			out.print("<script>alert('기존비밀번호와 새 비밀번호가 같습니다.'); location.href='mypage/pwdChange.jsp';</script>");
			System.out.println("기존비밀번호와 새 비밀번호가 같음");
		}			
		}
	}
}

