<%@page import="proto.TestVO"%>
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
<link rel="stylesheet" href="adminCSS.css">
<link rel="stylesheet" href="/css/review.css">
</head>
<%
	request.setCharacterEncoding("utf-8");

List<TestVO> nameList = (List<TestVO>) session.getAttribute("nameList");
int one_page_memeberSize = 10;
int one_page_memberNumbers = 5;
int total_member_page = (int)Math.ceil(nameList.size()/(double)one_page_memeberSize);

//페이지 읽어오기
int currentPage = 1;
try {
	currentPage = Integer.parseInt(request.getParameter("page"));
	if (currentPage <= 0)
		currentPage = 1;
} catch (Exception e) {}

//한 페이지에 나올 맴버들 추출(0~9 / 10~19 / 20~29)
int startNumber = (currentPage - 1) * one_page_memeberSize;
int endNumber = currentPage * one_page_memeberSize - 1;
if (endNumber > nameList.size() - 1)
	endNumber = nameList.size() - 1;
List<TestVO> currentList = new ArrayList<TestVO>();
for (int i = startNumber; i <= endNumber; i++) {
	currentList.add(nameList.get(i));
}

//이 페이지의 하단 페이징 출력하기(1~5 / 6~10 / 11~15)
int current_paging = ((currentPage - 1) / one_page_memberNumbers) + 1;

int startPage = (current_paging * one_page_memberNumbers) - 4;
int endPage = current_paging * one_page_memberNumbers;
if (endPage > total_member_page)
	endPage = total_member_page;


//리뷰
List<TestVO> reviewList = (List<TestVO>) session.getAttribute("nameList");
int one_page_reviewSize = 3;
int one_page_reviewNumbers = 5;
int total_review_page = (int)Math.ceil(reviewList.size()/(double)one_page_reviewSize);

//페이지 읽어오기
int currentReviewPage = 1;
try {
	currentReviewPage = Integer.parseInt(request.getParameter("page"));
	if (currentReviewPage <= 0)
		currentReviewPage = 1;
} catch (Exception e) {}

//한 페이지에 나올 리뷰 추출
int reviewStartNumber = (currentReviewPage - 1) * one_page_reviewSize;
int reviewEndNumber = currentReviewPage * one_page_reviewSize - 1;
if (reviewEndNumber > reviewList.size() - 1)
	reviewEndNumber = reviewList.size() - 1;
List<TestVO> currentReviewList = new ArrayList<TestVO>();
for (int i = reviewStartNumber; i <= reviewEndNumber; i++) {
	currentReviewList.add(reviewList.get(i));
}

//이 페이지의 하단 페이징 출력하기(1~5 / 6~10 / 11~15)
int review_current_paging = ((currentReviewPage - 1) / one_page_reviewNumbers) + 1;

int startReviewPage = (review_current_paging * one_page_reviewNumbers) - 4;
int endReviewPage = review_current_paging * one_page_reviewNumbers;
if (endReviewPage > total_review_page)
	endReviewPage = total_review_page;
%>

<style>
td, th{
	text-align: left;

}

.leftUl{
  float: left;
  padding: 10px;
}

.container {
	margin: 20px auto;
}

.tab_title {
	
	width:  100%;
}

.tab_title li {
	/* list-style: none;
	float: left;
	width: 100px;
	padding: 10px 15px;
	cursor: pointer;
	text-align: center;
	border: 1px solid #bebebe; */	
	text-align: center;
	position: relative;
    height : 3em;
    border: 1px ;
    width : 49%;
    display: inline-block;
    border-radius: 5px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 10px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    cursor: pointer;
    font-weight: bold;
	color: var(--darker-color);
}

.tab_title li.on {
	background-color: var(--primary-color);
	color: var(--white-color);
}

.tab_cont {
	clear: both;
	height: 250px;
}

.tab_cont>div {
	display: none;
	text-align: center;
}

.tab_cont div.on {
	display: block;
}

.memeberT {
	margin: 0 auto;
}

.reviewCon {
	float: left;
}

.pagination {
	margin: 0 auto;
}

.pagination ul {
	display: inline-block;
}

.pagination ul li {
	float: left;
}

ul li {
	list-style-type: none;
	display: inline;
	margin-left: 5px;
}
.memeberT{
	border-collapse: collapse;
}

.modal {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   border-radius: 10px red;
}
.modal2 {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   border-radius: 10px red;
}
.modalBox {
   position: absolute;
   top: 30%;
   background-color: #fff;
   width: 400px;
   height: 250px;
   padding: 15px;
}
.modal .bg {
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.6);
}
.modal2 .bg {
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.6);
}
.hidden {
   display: none;
}
</style>

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
				<c:forEach var="serchNumber" items="<%=currentList%>" varStatus="status">
					<tr>
						<td style="border-bottom: 1px solid black;">${serchNumber.getName()}</td>
						<td style="border-bottom: 1px solid black;">${serchNumber.getEmail()}</td>
						<td class="openBtn" style="border-bottom: 1px solid black;"><button onclick="openModal()">삭제</button></td>
					</tr>						
				</c:forEach>
			</table>
			<ul class="pagination">
				<c:set var="current_page" value="<%=currentPage %>" />
				<li class="disabled">
					<c:if test="<%=!(startPage == 1)%>"><a href="/admins/page?page=<%=startPage - 1%>"></c:if> 
					<span>«</span></a>
				</li>
				<c:forEach var="i" begin="<%=startPage%>" end="<%=endPage%>">
					<li><c:if test="${i != current_page}"><a href="/admins/page?page=${i}"></c:if>${i}</a></li>					
				</c:forEach>
				<li>
					<c:if test="<%=total_member_page > endPage%>"><a href="/admins/page?page=<%=endPage + 1%>"></c:if>
					<span>»</span></a>
				</li>
			</ul>
			<div class="modal hidden">
				<div class="bg"></div>
				<div class="modalBox">
					<c:import url="memDelModal.jsp"></c:import>
				</div>
			</div>
		</div>

		<div>
			<input type="text" name="serch"> <input type="submit" value="검색"> <br>
			<div class="reviewCon">
				<c:forEach var="serchNumber" items="<%=currentReviewList%>" varStatus="status">
					<table>
						<tr>
							<td class="image" rowspan="4">이미지</td>
							<td>작성자 : ${serchNumber.name}</td>
							<td>작성일시 : 2022-01-24</td>
						</tr>
						<tr>
							<td colspan="5">제목 : ${serchNumber.email}</td>
						</tr>
						<tr>
							<td colspan="5">가야 할 때가 언제인가를 분명히 알고 가는 이의 뒷모습은 얼마나 아름다운가.
								봄 한 철 격정을 인내한 나의 사랑은 지고 있다. 분분한 낙화. 결별이 이룩하는 축복에 싸여 지금은 가야 할 때
								무성한 녹음과 그리고 머지않아 열매 맺는 가을을 향하여 나의 청춘은 꽃답게 죽는다. 헤어지자 섬세한 손길을 흔들며
								하롱하롱 꽃잎이 지는 어느 날 나의 사랑, 나의 결별 샘터에 물 고이듯 성숙하는 내 영혼의 슬픈 눈.</td>
						</tr>
						<tr>
							<td colspan="3"></td>
							<td class="right"><button onclick="openModal2()">리뷰 삭제</button></td>
						</tr>
					</table>
					<hr />
				</c:forEach>
			</div>
			<div class="pagination">
				<c:set var="current_reviewPage" value="<%=currentReviewPage %>" />
				<ul>
					<li class="disabled"><c:if
							test="<%=!(startReviewPage == 1)%>">
							<a href="/admins/page?page=<%=startReviewPage - 1%>">
						</c:if> <span>«</span></a></li>
					<c:forEach var="i" begin="<%=startPage%>" end="<%=endReviewPage%>">
						<li><c:if test="${i != current_reviewPage}"><a href="/admins/page?page=${i}"></c:if>${i}</a></li>		
					</c:forEach>
					<li><c:if test="<%=total_review_page > endReviewPage%>">
							<a href="/admins/page?page=<%=endReviewPage + 1%>">
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
		location.href = "/admins/page?page=1";
		
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