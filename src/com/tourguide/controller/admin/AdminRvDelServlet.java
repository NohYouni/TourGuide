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
import com.tourguide.dao.RvDtlDAO;

@WebServlet("/adminRvDel")
public class AdminRvDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("memId", request.getParameter("id"));
		request.setAttribute("fvNo", request.getParameter("no"));
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/reviewDelModal.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String memId = request.getParameter("memId");
		String fvNo = request.getParameter("fvNo");

		String rsns = "";
		for (int i = 1; i < 9; i++) {
			if (request.getParameter("rsn" + i) != null)
				rsns = rsns + request.getParameter("rsn" + i);
		}

		int rsn = Integer.parseInt(rsns);
		RvDtlDAO dao = new RvDtlDAO();
		dao.rvDtlDelete(memId, fvNo, rsn);

		out.print("<script> window.close();");
		out.print("opener.document.location.href='/admins/page'; ");
		out.print("</script>");

	}

}
