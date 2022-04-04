<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/css/board.css">
<style>




</style>
</head>
<body>
	<c:import url="/header.jsp"></c:import>
	
	<nav>
        <ul class="inlineUl">
        <li><a class="selected_menu" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
	
	
	<section>
		<div class="" id="div_boardList_searchbar">
			<select class="select_loca" name="location" id="select_boardList">
			</select>
			
			<input type="text" /> <button class="btn_middle btn_primary" >검색</button>
		</div>
		
		<div class="square_list" id="div_boardList_article">
		<c:forEach items="${list}" var ="list">
			<div class="" id="" onclick="viewDetailFestival(${list.contentid}, 	${list.contenttypeid}, ${list.mapx}, ${list.mapy})">
				<table id="tb_boardList">
				<tr><td><img alt="no image" src="${list.firstimage}" class="img_boardList"></td></tr>
				<tr><td>${list.title}</td></tr>
				</table>				
			</div>
		</c:forEach>
		</div>
		
		<div class="" id=""><button id="btn_boardList_viewmore" onclick="boardListViewMore()" class="btn-longbox">더보기</button></div>
	</section>
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>
	
	<form action="/festival/detail" method="POST" id="form_boardList">
		<input type="hidden" id="input_boardList_contentid" name="contentid"/>
		<input type="hidden" id="input_boardList_contenttypeid" name="contentTypeId"/>
		<input type="hidden" id="input_boardList_mapx" name="mapx"/>
		<input type="hidden" id="input_boardList_mapy" name="mapy"/>
	</form>
	
</body>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

<script src="/board/locations.json" type="text/javascript"></script>
</html>