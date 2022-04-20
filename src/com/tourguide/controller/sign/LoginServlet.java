package com.tourguide.controller.sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

import com.tourguide.dao.MmMstDAO;
import com.tourguide.dto.MmMstVO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.sendRedirect("/sign/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String mmId = request.getParameter("mmId");
		String mmPwd = request.getParameter("mmPwd");
				
		// 데이터 베이스에서 회원 정보를 select하요 값을 비교하고 로그인 수정 : 아직 구현전
//		String url = "/login.jsp"; 
		
		HttpSession ses = request.getSession(); // 세션 객체 생성
		
		MmMstDAO dao = new MmMstDAO();
		MmMstVO vo = dao.mmMstLogin(mmId, mmPwd);
		// checkMem() 함수구현
		if(vo.getMmId() != null) {
//			System.out.println("1111");
			ses.setAttribute("mmId", vo.getMmId());
			ses.setAttribute("sts", vo.getStsCode());
			
			if(vo.getStsCode() == 2) {
				System.out.println("로그인 실패");
				
				ses.setAttribute("errMsg", "로그인 정보가 잘못됐습니다.");
				response.sendRedirect("/sign/login.jsp");
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.forward(request, response);
			}
			
		}else {
			System.out.println("로그인 실패");
			
			ses.setAttribute("errMsg", "로그인 정보가 잘못됐습니다.");
			response.sendRedirect("/sign/login.jsp");
		}
		

		
/*		if(result == -1) {
			// DB에서 회원정보(이름)을 가져와서 저장하는 구문 작성

	
			ses.setAttribute("loginUser", vo);		// 회원 정보를 세션에 저장
			
			request.setAttribute("message", "인증이 완료되었습니다");
			url = "main.jsp"; 
		}else if(result == 0){
			request.setAttribute("message", "존재하지 않는 회원입니다"); 
			System.out.println("존재하지 않는 회원입니다");
		}else {
			request.setAttribute("message", "비밀번호가 맞지않습니다");
			System.out.println("비밀번호가 맞지않습니다");
			System.out.println("관리자 되십니까?");
		}*/
		
		System.out.println(vo.getStsCode());
//		ses.setAttribute("sts", vo.getStsCode());

/*		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response); */
	}

}
