<%@page import="com.tourguide.dto.MmMstVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">

<title>관리자페이지</title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/adminCSS.css">
<link rel="stylesheet" href="/css/review.css">
<link rel="stylesheet" href="/css/commonCss.css">
</head>

<body>
<c:import url="/header.jsp"></c:import>

	<nav>
		<ul class="inlineUl">
			<li><a class="selected_menu" style="cursor: pointer;"
				onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
			<li><a class="selected_menu" style="cursor: pointer;"
				href="/eventPage/event.jsp" id="a_header_ev">이벤트</a></li>
		</ul>
		<hr>
	</nav>


<div class="container">
	<ul class="tab_title">
		<li class="on">회원 조회</li>
		<li>리뷰 조회</li>
	</ul>
	<div class="tab_cont">
		<div class="on">
			<form action="/admins/page" name="mmMstSerch" >
				<input type="text" name="serch"> 
				<input class="btn_middle btn_primary" type="submit" value="검색"><br>
			</form>
			<table width="90%" class="memeberT" >
				<tr>
					<th width="45%">아이디</th>
					<th width="45%">이메일</th>
					<th width="10%"></th>
				</tr>				
				<c:forEach var="serchNumber" items="${mm_currentList}" varStatus="status">
					<c:choose>
						<c:when test="${serchNumber.outCode == 0 }">
							<tr>
								<td style="border-bottom: 1px solid black;"><a href="javascript:void(0);" onclick="memberDetail('${serchNumber.mmId}')">${serchNumber.mmId}</a></td>
								<td style="border-bottom: 1px solid black;">${serchNumber.mmEmail}</td>
								<td style="border-bottom: 1px solid black;"><button class="btn_middle btn_primary" onclick="memberDelete('${serchNumber.mmId}')">삭제</button></td>
							</tr>	
						</c:when>
						<c:otherwise>
							<tr style="color: red;">
								<td style="border-bottom: 1px solid black;"><a href="javascript:void(0);" onclick="memberDetail('${serchNumber.mmId}')">${serchNumber.mmId}</a></td>
								<td style="border-bottom: 1px solid black;">${serchNumber.mmEmail}</td>
								<td style="border-bottom: 1px solid black;"><button class="btn_middle1 btn_primary" onclick="memberDeleteRsn('${serchNumber.outCode}')">삭제 이유</button></td>
							</tr>
						</c:otherwise>
					</c:choose>
					
				</c:forEach>
			</table>
			
			<ul class="pagination">
				<c:set var="current_page" value="${mm_currentPage}" />
				<li class="disabled">
					<c:if test="${!(mm_startPage == 1) }"><a href="/admins/page?page=${mm_startPage-1 }&serch=${mm_serch}"></c:if> 
					<span>«</span></a>
				</li>
				<c:forEach var="i" begin="${mm_startPage}" end="${mm_endPage}">
					<li><c:if test="${i != mm_currentPage}"><a href="/admins/page?page=${i}&serch=${mm_serch}"></c:if>${i}</a></li>					
				</c:forEach>
				<li>
					<c:if test="${mm_total_member_page > mm_endPage}"><a href="/admins/page?page=${mm_endPage+1}&serch=${mm_serch}"></c:if>
					<span>»</span></a>
				</li>
			</ul>
		</div>

		<div>
			<form action="/admins/page" name="mmMstSerch" >
				<input type="text" name="serch"> 
				<input class="btn_middle btn_primary" type="submit" value="검색"><br>
			</form>
			<div class="reviewCon">
				<c:forEach var="serchNumber" items="${rv_currentList }" varStatus="status">
					<c:choose>
						<c:when test="${serchNumber.delCode == 0}">
							<table style="width: 980px;">
								<tr>
									<td class="image" rowspan="4">
										<c:if test="${empty serchNumber.img1}"> <img style="width: 200px; height: 200px;" src="/noImage.png" alt="이미지" /> </c:if>
										<c:if test="${not empty serchNumber.img1}"><img style="width: 200px; height: 200px;" src="/images/${serchNumber.img1}" alt="이미지" /> </c:if>
									</td>
									<td >작성자 : ${serchNumber.mmId}</td>
									<td >작성일시 : ${serchNumber.rgtDate }</td>
								</tr>
								<tr>
									<td colspan="5">제목 : ${serchNumber.rvSub}</td>
								</tr>
								<tr>
									<td colspan="5">${serchNumber.rvCnts}</td>
								</tr>
								<tr>
									<td colspan="3"></td>
									<td class="right"><button class="btn_middle btn_primary" onclick="reviewDelete('${serchNumber.mmId}', '${serchNumber.fvNo}')">삭제</button></td>
								</tr>
							</table>
							<hr />
						</c:when>
						<c:otherwise>
							<table style="color: red; width: 980px;">
								<tr>
									<td class="image" rowspan="4">
										<c:if test="${empty serchNumber.img1}"> <img style="width: 200px; height: 200px;" src="/noImage.png" alt="이미지" /> </c:if>
										<c:if test="${not empty serchNumber.img1}"><img style="width: 200px; height: 200px;" src="/images/${serchNumber.img1}" alt="이미지" /> </c:if>
									</td>
									<td>작성자 : ${serchNumber.mmId}</td>
									<td>작성일시 : ${serchNumber.rgtDate }</td>
								</tr>
								<tr>
									<td colspan="5">제목 : ${serchNumber.rvSub}</td>
								</tr>
								<tr>
									<td colspan="5">${serchNumber.rvCnts}</td>
								</tr>
								<tr>
									<td colspan="3"></td>
									<td class="right"><button class="btn_middle1 btn_primary" onclick="reviewDeleteRsn('${serchNumber.delCode}')">삭제 이유</button></td>
								</tr>
							</table>
							<hr />
						</c:otherwise>
					</c:choose>
					
				</c:forEach>
				<ul class="pagination">
					<c:set var="current_reviewPage" value="${rv_currentPage }" />
					<li class="disabled"><c:if
							test="${!(rv_startPage == 1) }">
							<a href="/admins/page?page=${rv_startPage-1 }&serch=${rv_serch}">
						</c:if> <span>«</span></a></li>
					<c:forEach var="i" begin="${rv_startPage }" end="${rv_endPage }">
						<li><c:if test="${i != rv_currentPage}"><a href="/admins/page?page=${i}&serch=${rv_serch}"></c:if>${i}</a></li>		
					</c:forEach>
					<li><c:if test="${rv_total_member_page > rv_endPage}">
							<a href="/admins/page?page=${rv_endPage+1 }&serch=${rv_serch}">
						</c:if> <span>»</span></a></li>	
				</ul>
			</div>						
		</div>
			
		<c:import url="/footer.jsp"></c:import>
	</div>
</div>
<script type="text/javascript" src="/js/admin.js"></script>	
</body>
</html>