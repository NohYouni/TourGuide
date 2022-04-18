package com.tourguide.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dao.RvDtlDAO;

@WebServlet("/adminDeleteRsn")
public class AdminDeleteRsnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String rsn = request.getParameter("rsn");
		MmMstDAO dao = new MmMstDAO();
		List<String> rsnList = dao.outRsnGetAll();
		List<String> rsns = new ArrayList<String>();

		if(rsn.equals("10")) {
			rsns.add(rsnList.get(0));
		}else {
			for(int i=0; i<rsn.length(); i++) {
				int result = rsn.charAt(i)-'0';
				rsns.add(rsnList.get(result+1));
			}
		}

		request.setAttribute("rsns", rsns);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/deleteRsnModal.jsp");
		dispatcher.forward(request, response);
	}



}
