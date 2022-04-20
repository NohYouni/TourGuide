package com.tourguide.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tourguide.dto.RvDtlVO;
import com.tourguide.service.BoardService;
import com.tourguide.service.BoardSv;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/festival/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BoardController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doBoard(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doBoard(request, response);
	}
	
	protected void doBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = null;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		String reqURL = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURL.substring(contextPath.length());
		
		System.out.println("경로 : "+cmd);
		
		BoardSv bs = new BoardService();

		if(cmd.equals("/festival/main")){
			String location = request.getParameter("location");
			String numOfRows = request.getParameter("numOfRows");
			String searchKeyword = request.getParameter("searchKeyword");
			if (searchKeyword!= null) {
				searchKeyword = searchKeyword.indexOf("/") > -1 ? searchKeyword.replace("/", ""): searchKeyword;
				System.out.println(searchKeyword);
				request.setAttribute("searchKeyword", searchKeyword);
			}
			request.setAttribute("list", bs.getAll(numOfRows, location));
			request.setAttribute("location", location);
			request.setAttribute("numOfRows", numOfRows);
			request.setAttribute("totalCount", bs.getTotalCount(numOfRows, location));
			rd = request.getRequestDispatcher("/board/boardList.jsp");
			rd.forward(request, response);
			
		}else if(cmd.equals("/festival/detail")){		
			String contentid = request.getParameter("contentid");
			String contentTypeId = request.getParameter("contentTypeId");
			String mapx = request.getParameter("mapx");
			String mapy = request.getParameter("mapy");
			
			System.out.println(bs.getReview(contentid));
			request.setAttribute("fvNo", contentid);
			request.setAttribute("detail", bs.getOne1(contentid).get(0));
			request.setAttribute("review", bs.getReview(contentid));
			if(!mapx.equals("undefined")) {
				request.setAttribute("seeSight", bs.getSight("10", mapx, mapy));
			}
			
			rd = request.getRequestDispatcher("/board/boardDetail.jsp");
			rd.forward(request, response);
			
//		}else if(cmd.equals("/festival/createReview")){		
//			String contentid = request.getParameter("contentid");
//			
//			RvDtlVO vo = new RvDtlVO();
//			HttpSession session = request.getSession();
//			vo.setMmId((String)session.getAttribute("mmId"));
//			vo.setFvNo(contentid);
//			vo.setRvSub(request.getParameter("rvSb"));
//			vo.setRvCnts(request.getParameter("rvCnts"));
//			
//			bs.createReview(vo);
//			String file = request.getParameter("file");
//			
//			
//			request.setAttribute("contentid", contentid);
//			request.setAttribute("mapx", request.getParameter("mapx"));
//			request.setAttribute("mapy",  request.getParameter("mapy"));
//			
//			rd = request.getRequestDispatcher("/festival/detail");
//			rd.forward(request, response);
//			
		}else if(cmd.equals("/festival/reviewCheck")){		
			response.getWriter().append(bs.reviewCheck(request));
			
		}else if(cmd.equals("/festival/searchKey")){		
			String numOfRows = request.getParameter("numOfRows");
			String searchKeyword = request.getParameter("searchKeyword");
			String location = request.getParameter("location");
			request.setAttribute("location", location);

			if (searchKeyword!= null) {
				searchKeyword = searchKeyword.indexOf("/") > -1 ? searchKeyword.replace("/", ""): searchKeyword;
				System.out.println(searchKeyword);
				request.setAttribute("searchKeyword", searchKeyword);
			}
			request.setAttribute("list", bs.searchKey(numOfRows, searchKeyword, location));
			request.setAttribute("totalCount", bs.getTotalCount(numOfRows, searchKeyword, location));
			rd = request.getRequestDispatcher("/board/boardList.jsp");
			rd.forward(request, response);
			
		}
	}

}


