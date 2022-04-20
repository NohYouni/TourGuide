<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="/css/commonCss.css">
</head>
<style>
.rigthUl {
	float: right;
}

.leftUl {
	float: left;
}

.rect {
	width: 450px;
	height: 400px;
	border: 3px dashed var(--darker-color);
	margin: 15px;
}

.srect {
	width: 420px;	height: 140px;
	border: 3px outset var(--primary-color);
	margin: 5px auto; text-align: center;
}

.srect1 {
	width: 420px;	height: 88px;
	line-height: 40px; 	margin: 5px auto;
	text-align: center;
}
.evtImg {
	width: 100%; height: auto; overflow: hidden;
}
.cvdImg {
	width: 100%; height: auto; overflow: hidden;
}
.select_loca1{
	width : 180px;	height : 3em;	radius : 10px;
}
#searchKeyword {
	border: 4px outset var(--primary-color);
}
.btn_middle1{
    position: relative;
    height : 3em;
    width : 120px;
    border: none;
    display: inline-block;
/*     padding: 0px 30px; */
    border-radius: 10px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    cursor: pointer;
    background-color: var(--primary-color);
	color : var(--white-color);
 }


.main {
	margin: 2px;
}
</style>
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

	<div class="main">
		<div class="rect leftUl">
			<a class="selected_menu" style="cursor: pointer;"
				onclick="festivalBoardLoad(8, 0)" id="a_header_fv">
				 <img src="${list.firstimage}">행사확인</a>
		</div>
		<div class="rect rigthUl">
			<div class="srect1">
				<form action="/festival/searchKey" method="Post"
					id="form_boardList_searchKeyword">
					<div>
						<input type="hidden" id="hidden_boardList_location" name="location" value="${location}" /> <input type="hidden"
							id="hidden_boardList_numOfRows" name="numOfRows" value="${numOfRows}" />
						<input type="text" name="searchKeyword" id="searchKeyword" value="${searchKeyword}" />
					</div>
					<div class="" id="div_boardList_searchbar">
						<select class="select_loca1" name="location" id="select_boardList" onchange="changeLocation()">
							<c:choose>
								<c:when test="${location == '0' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '1' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '2' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '3' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '4' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '5' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '6' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '7' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '8' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '31' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '32' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '33' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '34' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '35' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '36' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '37' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '38' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:when test="${location == '39' }">
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:when>
								<c:otherwise>
									<option value="0" selected="selected">전국</option><option value="1">서울</option><option value="2">인천</option>
									<option value="3">대전</option><option value="4">대구</option><option value="5">광주</option>
									<option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option>
									<option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option>
									<option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option>
									<option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>
								</c:otherwise>
							</c:choose>
						</select>
						&nbsp;&nbsp;
						<button type="button" onclick="doSearchKey()" class="btn_middle1 btn_primary">검&nbsp;색</button>
					</div>
				</form>
			</div>
			<div class="srect">
				<a class="evtImg" style="cursor : pointer;" href="/eventPage/event.jsp">
					<img src="/event.gif"></a>
			</div>
			<div class="srect">
				<a class="cvdImg" style="cursor : pointer;" href="http://ncov.mohw.go.kr/">
					<img src="/covid.jpg"></a>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>