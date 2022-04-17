package com.tourguide.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourguide.dao.MmMstDAO;

@WebServlet("/adminMemDel")
public class AdminMemDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("memId", request.getParameter("id"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/memDelModal.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("memId");
		
		
		String rsns = "";
		for(int i=1; i<9; i++) {
			if(request.getParameter("rsn" + i) != null)
				rsns = rsns+request.getParameter("rsn" + i);
		}
		int rsn = Integer.parseInt(rsns);
		System.out.println(id + " /// " + rsn);
		MmMstDAO dao = new MmMstDAO();
		dao.mmMstDelete(id, rsn);
		
		out.print("<script> window.close();");
		out.print("opener.document.location.href='/admins/page'; ");
		out.print("</script>");
	}

}
