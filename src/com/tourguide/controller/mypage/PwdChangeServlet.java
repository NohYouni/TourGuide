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
import com.tourguide.dto.MmMstVO;

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
		MmMstVO vo = new MmMstVO();
		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession() ;
		String mmId = (String) session.getAttribute("mmId");
		if(mmId==null) {
			response.sendRedirect("/sign/login.jsp");
		}else {
		vo = dao.mmMstGetOne(mmId);
		String mmPwd = vo.getMmPwd();
		String newPwd = request.getParameter("newPwd");
		String newPwdCheck = request.getParameter("newPwdCheck");
		if(mmPwd.equals(newPwd)) {
			out.print("<script>alert('기존비밀번호와 새 비밀번호가 같습니다.'); location.href='mypage/pwdChange.jsp';</script>");
			System.out.println("기존비밀번호와 새 비밀번호가 같음");
		
		}else if(newPwd.equals(newPwdCheck)) {
			dao.mmMstUpdate(mmId, newPwd);
			out.print("<script>alert('비밀번호가 변경되었습니다'); location.href='mypage';</script>");
			}else {
			out.print("<script>alert('새 비밀번호 입력이 잘못되었습니다.'); location.href='mypage/pwdChange.jsp';</script>");
			System.out.println("비밀번호가 틀렸습니다.");
			}
		}			
		}
	}


