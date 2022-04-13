package com.tourguide.controller.sign;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;

@WebServlet("/singUp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		MmMstVO vo = new MmMstVO();
		vo.setMmId(request.getParameter("mmId"));
		vo.setMmPwd(request.getParameter("mmPwd"));
		vo.setMmEmail(request.getParameter("mmEmail"));
		MmMstDAO dao = new MmMstDAO();
		if (dao.mmMstInsert(vo) == 1)
			System.out.println("성공");
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}

}
