<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/css/board.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="/header.jsp"></c:import>
	
<!-- 	<nav>
        <ul class="inlineUl">
        <li><a style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a class="selected_menu"  href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav> -->
	<nav>
        <ul class="inlineUl">
        <li><a class="selected_menu" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a class="selected_menu" style="cursor : pointer;" href="/eventPage/event.jsp" id="a_header_ev">&nbsp;&nbsp;이벤트</a></li></ul><hr>
    </nav>
	
	<section>
		<div class="" id="div_boardList_searchbar">
			<select class="select_loca" name="location" id="select_boardList" onchange="changeLocation()">
				<c:choose>
<c:when test="${location == '0' }">
		<option value="0" selected="selected">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '1' }">
		<option value="0">전국</option>	<option value="1" selected="selected">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '2' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2" selected="selected">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '3' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3" selected="selected">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '4' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4" selected="selected">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '5' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5" selected="selected">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '6' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6" selected="selected">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '7' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7" selected="selected">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '8' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8" selected="selected">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '31' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31" selected="selected">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '32' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32" selected="selected">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '33' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33" selected="selected">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '34' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34" selected="selected">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '35' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35" selected="selected">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '36' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36" selected="selected">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '37' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37" selected="selected">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '38' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38" selected="selected">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '39' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39" selected="selected">제주도</option>
	</c:when>
	<c:otherwise>
		<option value="0" selected="selected">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:otherwise>
	</c:choose>
		</select>
		 &nbsp;&nbsp;
		<form action="/festival/searchKey" method="Post" id="form_boardList_searchKeyword">
			<input type="hidden" id="hidden_boardList_location" name="location" value="${location}"/>
			<input type="hidden" id="hidden_boardList_numOfRows" name="numOfRows" value="${numOfRows}"/> 		 			
			<input type="text" name="searchKeyword" id="searchKeyword" value ="${searchKeyword}"/> 
			<button type="button" onclick="doSearchKey()" class="btn_middle btn_primary" >검색</button>
		</form>		
		
		</div>
		
		<div class="square_list" id="div_boardList_article">
	
		<c:forEach items="${list}" var ="list">
		
		<c:choose>
			<c:when test="${list.mapx != null}">
			<div class="" id="" onclick="viewDetailFestival(${list.contentid}, 	${list.contenttypeid}, ${list.mapx}, ${list.mapy})">
				<table id="tb_boardList">	
				<c:choose>
					<c:when test="${list.firstimage != null}">
						<tr><td><img alt="${list.title}" src="${list.firstimage}" class="img_boardList"></td></tr>
					</c:when>
					<c:otherwise>
						<tr><td><img alt="${list.title}" src="/board/noImages.jpg" class="img_boardList"></td></tr>
					</c:otherwise>
				</c:choose>
					<tr><td>${list.title}</td></tr>
				</table>				
			</div>
			</c:when>
			<c:otherwise>
			<div class="" id="" onclick="viewDetailFestival(${list.contentid}, 	${list.contenttypeid})">
			<table id="tb_boardList">
				<c:choose>
					<c:when test="${list.firstimage != null}">
						<tr><td><img alt="${list.title}" src="${list.firstimage}" class="img_boardList"></td></tr>
					</c:when>
					<c:otherwise>
						<tr><td><img alt="${list.title}" src="/board/noImages.jpg" class="img_boardList"></td></tr>
					</c:otherwise>
				</c:choose>
				<tr><td>${list.title}</td></tr>
				</table>				
			</div>
			</c:otherwise>
		</c:choose>
				
		</c:forEach>
		</div>
		
		<div class="" id=""><button id="btn_boardList_viewmore" onclick="boardListViewMore()" class="btn-longbox btn_primary">더보기 (총 ${numOfRows} / ${ totalCount}개)</button></div>
		<input type="hidden" id="hidden_boardList_totalCount" value="${ totalCount}"/>
	</section>

	<div id="tothetop" class='tothetop'>▲</div>
	
	<form action="/festival/detail" method="POST" id="form_boardList">
		<input type="hidden" id="input_boardList_contentid" name="contentid"/>
		<input type="hidden" id="input_boardList_contenttypeid" name="contentTypeId"/>
		<input type="hidden" id="input_boardList_mapx" name="mapx"/>
		<input type="hidden" id="input_boardList_mapy" name="mapy"/>
	</form>
		<c:import url="/footer.jsp"></c:import>
</body>

</html>