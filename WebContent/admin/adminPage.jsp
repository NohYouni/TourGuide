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
<link rel="stylesheet" href="/admin/adminCSS.css">
<link rel="stylesheet" href="/css/review.css">
</head>

<body>
<c:import url="/header.jsp"></c:import>

<div class="">
	<nav>
        <ul class="inlineUl">
        <li><a style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>

<div class="container">
	<ul class="tab_title">
		<li class="on">회원 조회</li>
		<li>리뷰 조회</li>
	</ul>
	<!-- <button class="btn-tab selected_tab">회원조회</button>
	<button class="btn-tab ">리뷰조회</button> -->
	<div class="tab_cont">
		<div class="on">
			<form action="" onsubmit="test()">
				<input type="text" name="serch"> 
				<input type="submit" value="검색"><br>
			</form>
			<table width="90%" class="memeberT" >
				<tr>
					<th width="45%">아이디</th>
					<th width="45%">이메일</th>
					<th width="10%"></th>
				</tr>
				<c:forEach var="serchNumber" items="${mm_currentList}" varStatus="status">
					<tr>
						<td style="border-bottom: 1px solid black;">${serchNumber.mmId}</td>
						<td style="border-bottom: 1px solid black;">${serchNumber.mmEmail}</td>
						<td class="openBtn" style="border-bottom: 1px solid black;"><button onclick="openModal()">삭제</button></td>
					</tr>						
				</c:forEach>
			</table>
			<ul class="pagination">
				<c:set var="current_page" value="${mm_currentPage}" />
				<li class="disabled">
					<c:if test="${!(mm_startPage == 1) }"><a href="/admins/page?page=${mm_startPage-1 }"></c:if> 
					<span>«</span></a>
				</li>
				<c:forEach var="i" begin="${mm_startPage}" end="${mm_endPage}">
					<li><c:if test="${i != mm_currentPage}"><a href="/admins/page?page=${i}"></c:if>${i}</a></li>					
				</c:forEach>
				<li>
					<c:if test="${mm_total_member_page > mm_endPage}"><a href="/admins/page?page=${mm_endPage+1}"></c:if>
					<span>»</span></a>
				</li>
			</ul>
			<div class="modal hidden">
				<div class="bg"></div>
				<div class="modalBox">
					<c:import url="memDelModal.jsp">
						<c:param name="memId" value="${serchNumber.mmId}"></c:param>
					</c:import>
				</div>
			</div>
		</div>

		<div>
			<input type="text" name="serch"> <input type="submit" value="검색"> <br>
			<div class="reviewCon">
				<c:forEach var="serchNumber" items="${rv_currentList }" varStatus="status">
					<table>
						<tr>
							<td class="image" rowspan="4">이미지</td>
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
							<td class="right"><button onclick="openModal2()">리뷰 삭제</button></td>
						</tr>
					</table>
					<hr />
				</c:forEach>
				<ul class="pagination">
					<c:set var="current_reviewPage" value="${rv_currentPage }" />
					<li class="disabled"><c:if
							test="${!(rv_startPage == 1) }">
							<a href="/admins/page?page=${rv_startPage-1 }">
						</c:if> <span>«</span></a></li>
					<c:forEach var="i" begin="${rv_startPage }" end="${rv_endPage }">
						<li><c:if test="${i != rv_currentPage}"><a href="/admins/page?page=${i}"></c:if>${i}</a></li>		
					</c:forEach>
					<li><c:if test="${rv_total_member_page > rv_endPage}">
							<a href="/admins/page?page=${rv_endPage+1 }">
						</c:if> <span>»</span></a></li>	
				</ul>
			</div>			
				
			<div class="modal2 hidden">
				<div class="bg"></div>
				<div class="modalBox">
					<c:import url="reviewDelModal.jsp"></c:import>
				</div>
			</div>
		</div>
				
		<c:import url="/footer.jsp"></c:import>
	</div>
</div>

		

<script>

$(document).ready(function() {
	var tab = sessionStorage.getItem('tabSelect');
	$(".tab_title li").removeClass("on");
	$(".tab_title li").eq(tab).addClass("on");
	$(".tab_cont > div").hide();
	$(".tab_cont > div").eq(tab).show();
});

$(document).ready(function() {
	$(".tab_title li").click(function() {
		var idx = $(this).index();
		location.href = "/admins/page?page=1&tab="+idx;
		
		$(".tab_title li").removeClass("on");
		$(".tab_title li").eq(idx).addClass("on");
		$(".tab_cont > div").hide();
		$(".tab_cont > div").eq(idx).show();
		sessionStorage.setItem('tabSelect', idx);
	})
});

function openModal() {
	document.querySelector(".modal").classList.remove("hidden");
}
function openModal2() {
	document.querySelector(".modal2").classList.remove("hidden");
}
function closeModal() {
	document.querySelector(".modal").classList.add("hidden");
	document.querySelector(".modal2").classList.add("hidden");
}

document.querySelector(".modal .bg").addEventListener("click", closeModal);
document.querySelector(".modal2 .bg").addEventListener("click", closeModal);	

		
</script>
</body>
</html>