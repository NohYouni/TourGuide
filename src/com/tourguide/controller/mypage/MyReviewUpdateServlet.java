package com.tourguide.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tourguide.dao.RvDtlDAO;
import com.tourguide.dto.RvDtlVO;

/**
 * Servlet implementation class MyReviewDeleteServlet
 */
@WebServlet("/myReviewUpdate")
public class MyReviewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String mmid = (String) session.getAttribute("mmid");
		
		RvDtlDAO rdao = new RvDtlDAO();
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath("images");
		System.out.println("이미지저장경로:"+uploadFilePath);
		RvDtlVO vo = new RvDtlVO();
		try {
		MultipartRequest multi = new MultipartRequest(request,
				uploadFilePath,
				5*1024*1024,
				"utf-8",
				new DefaultFileRenamePolicy());
		String fvNo = multi.getParameter("fvNo");
		String img1 = multi.getFilesystemName("img1");
		String rvSub = multi.getParameter("rvSub");
		String rvCnts = multi.getParameter("rvCnts");
		System.out.println("이미지:"+img1);
		vo.setMmId(mmid);
		vo.setFvNo(fvNo);
		vo.setRvSub(rvSub);
		vo.setRvCnts(rvCnts);
		vo.setImg1(img1);
		System.out.println(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		int result = rdao.rvDtlUpdate(vo);
		System.out.println("업데이트결과 성공은1 실패는 0:"+result);
		if(result==1) {
			System.out.println("정상적으로 수정됨");
			out.print("<script>alert('리뷰를 수정하였습니다.'); opener.location.reload(); self.close();  </script>");
		}else {
			System.out.println("어딘가 문제가 생겼습니다.");
			out.print("<script>alert('잘못된 입력입니다.'); opener.location.reload(); self.close();</script>");
		}
}
}