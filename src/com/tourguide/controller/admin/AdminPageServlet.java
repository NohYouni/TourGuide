package com.tourguide.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dao.RvDtlDAO;
import com.tourguide.dto.MmMstVO;
import com.tourguide.dto.RvDtlVO;

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
			
			HttpSession ses = request.getSession();
			String tab = "";
			try {
				tab = (String)request.getParameter("tab");
				if(tab.equals("1")) {
					ses.setAttribute("tabSelect", "rv");
				}else {
					ses.setAttribute("tabSelect", "mm");
				}
			}catch (NullPointerException e) {}
			
			String sess = (String)ses.getAttribute("tabSelect");				
			if(sess == "rv") {
				rvDtlPageing(request, response, 5, 5);	
			}else {
				mmMstPageing(request, response, 10, 5);
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/adminPage.jsp");
			dispatcher.forward(request, response);
		}
		
		
		//리뷰 삭제
	}
	
	protected void mmMstPageing(HttpServletRequest request, HttpServletResponse response, int onePageSize, int onePaging)throws ServletException, IOException {
		MmMstDAO dao = new MmMstDAO();		
		
		List<MmMstVO> mmList = dao.mmMstGetAll();
		int mmSize = mmList.size();	//전체 회원 수
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(request.getParameter("page"));
			if (currentPage <= 0)
				currentPage = 1;
		} catch (Exception e) {}
		int total_member_page = (int)Math.ceil(mmSize/(double)onePageSize);
		
		//한 페이지에 나올 맴버들 추출(0~9 / 10~19 / 20~29)
		int startNumber = (currentPage - 1) * onePageSize;
		int endNumber = currentPage * onePageSize - 1;
		if (endNumber > mmList.size() - 1)
			endNumber = mmList.size() - 1;
		List<MmMstVO> currentList = new ArrayList<MmMstVO>();
		for (int i = startNumber; i <= endNumber; i++) {
			currentList.add(mmList.get(i));
		}

		//이 페이지의 하단 페이징 출력하기(1~5 / 6~10 / 11~15)
		int current_paging = ((currentPage - 1) / onePaging) + 1;

		int startPage = (current_paging * onePaging) - (onePaging-1);
		int endPage = current_paging * onePaging;
		if (endPage > total_member_page)
			endPage = total_member_page;
		
		request.setAttribute("mm_currentList", currentList);
		request.setAttribute("mm_total_member_page", total_member_page);
		request.setAttribute("mm_currentPage", currentPage);
		request.setAttribute("mm_startPage", startPage);
		request.setAttribute("mm_endPage", endPage);
		
	}
	protected void rvDtlPageing(HttpServletRequest request, HttpServletResponse response, int onePageSize, int onePaging)throws ServletException, IOException {
		RvDtlDAO dao = new RvDtlDAO();		
		
		List<RvDtlVO> mmList = dao.rvDtlGetAll();
		int mmSize = mmList.size();	//전체 회원 수
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(request.getParameter("page"));
			if (currentPage <= 0)
				currentPage = 1;
		} catch (Exception e) {}
		int total_member_page = (int)Math.ceil(mmSize/(double)onePageSize);
		
		//한 페이지에 나올 맴버들 추출(0~9 / 10~19 / 20~29)
		int startNumber = (currentPage - 1) * onePageSize;
		int endNumber = currentPage * onePageSize - 1;
		if (endNumber > mmList.size() - 1)
			endNumber = mmList.size() - 1;
		List<RvDtlVO> currentList = new ArrayList<RvDtlVO>();
		for (int i = startNumber; i <= endNumber; i++) {
			currentList.add(mmList.get(i));
		}

		//이 페이지의 하단 페이징 출력하기(1~5 / 6~10 / 11~15)
		int current_paging = ((currentPage - 1) / onePaging) + 1;

		int startPage = (current_paging * onePaging) - (onePaging-1);
		int endPage = current_paging * onePaging;
		if (endPage > total_member_page)
			endPage = total_member_page;
		
		request.setAttribute("rv_currentList", currentList);
		request.setAttribute("rv_total_member_page", total_member_page);
		request.setAttribute("rv_currentPage", currentPage);
		request.setAttribute("rv_startPage", startPage);
		request.setAttribute("rv_endPage", endPage);
	}
}
