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


@WebServlet("/checkPwd")
public class CheckPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		MmMstDAO dao = new MmMstDAO();		
		MmMstVO vo = new MmMstVO();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("mmId");
		//dao단에 pwdcheck 메서드를 하나 추가해서 비밀번호를 가져오고 그 비밀번화 입력한 비밀번호가 동일한지 확인해서 넘겨라
		
		String mmPwd = vo.getMmPwd();
		String pwd = request.getParameter("pwd");
		
		vo = dao.mmMstcheckId(id, pwd);
		
		if(mmPwd.equals(pwd)) {
		System.out.println("정상적인 비밀번호");
			RequestDispatcher dispatcher = request.getRequestDispatcher("mypage/changePwd.jsp");
			dispatcher.forward(request, response);
		
		}else {
			System.out.println("비밀번호 틀렸음");
			RequestDispatcher dispatcher = request.getRequestDispatcher(".");
			dispatcher.forward(request, response);
			
		}

	}

}
