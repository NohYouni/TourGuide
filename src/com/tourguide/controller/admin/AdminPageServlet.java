package com.tourguide.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;

@WebServlet("/admins/*")
public class AdminPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAdmin(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAdmin(request,response);		
	}
	
	protected void doAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String reqURL = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURL.substring(contextPath.length());
		System.out.println(cmd);
				
		
		//회원 조회
		if(cmd.equals("/admins/page")){	
			MmMstDAO dao = new MmMstDAO();		
			
			List<MmMstVO> mmList = dao.mmMstGetAll();
			for(int i=0; i<mmList.size(); i++) {
				System.out.println(mmList.get(i).getMmId());
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/adminPage.jsp");
			dispatcher.forward(request, response);
			
		}
		
		//리뷰 조회
		//페이징 관련
		//회원 탈퇴
		//리뷰 삭제
	}
	

}
