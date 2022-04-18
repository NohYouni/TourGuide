package com.tourguide.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dao.RvDtlDAO;

/**
 * Servlet implementation class MyReviewDeleteServlet
 */
@WebServlet("/myReviewDelete")
public class MyReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		//더보기를 눌렀을때 리뷰 상세내용을 저장해야겠네
		HttpSession session = request.getSession();
		String mmId = (String) session.getAttribute("mmId");
		String fvno = request.getParameter("fvNo");
		RvDtlDAO rdao = new RvDtlDAO();
		//본인탈퇴라서 아웃코드가 0번임
		int result = rdao.rvDtlDelete(mmId, fvno , 10);
		System.out.println(result);
		if(result==1) {
			System.out.println("정상적으로 삭제됨");
			out.print("<script>alert('리뷰를 삭제하였습니다.'); location.href='/myReviewList';</script>");
		}else {
			System.out.println("어딘가 문제가 생겼습니다.");
			out.print("<script>alert('잘못된 입력입니다.'); location.href='/myReviewList';</script>");
}

}
}
