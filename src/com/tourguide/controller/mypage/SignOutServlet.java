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


@WebServlet("/signOut")
public class SignOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession() ;
		String mmId = (String) session.getAttribute("mmId");
		//아웃내용은 본인탈퇴 로 변경
		//상태코드는 비회원으로 변경
		dao.mmMstDelete(mmId, 2);
		session.removeAttribute("sts");
		session.removeAttribute("mmid");
		out.print("<script>alert('정상적으로 회원탈퇴 되었습니다.'); location.href='/index.jsp';</script>");
		}
	}

