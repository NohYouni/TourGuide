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

/**
 * Servlet implementation class ChangePwdServlet
 */
@WebServlet("/changePwd")
public class ChangePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		MmMstVO vo = new MmMstVO();
		MmMstDAO dao = new MmMstDAO();
		HttpSession session = request.getSession() ;
		String id = (String) session.getAttribute("mmId");
		String pwd = request.getParameter("mmPwd");
		String newPwd = request.getParameter("newPwd");
		int check = 0;
		check = dao.mmMstcheckId(id, pwd);
		
		if(check == 1) {
		dao.mmMstUpdate(id, newPwd);
		}else {
			System.out.println("비밀번호가 틀렸습니다.");
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("mypage/mypage.jsp");
		dispatcher.forward(request, response);
			
		}
	}


