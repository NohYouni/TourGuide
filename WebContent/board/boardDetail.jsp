<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행사 상세 보기</title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/commonCss.css">
</head>

<body>
	<c:import url="/header.jsp"></c:import>

	<nav>
        <ul class="inlineUl">
        <li><a class="selected_menu" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
	<section>
	
	<div class="" id="">
	
		<div id ="div_boardDetail_04">

			<table>
				<tr><td rowspan="5" colspan="2"><img src="${detail.firstimage }" alt="" class="img_boardDetail"/></td><td></td><td></td></tr>
				<tr><td>행사 이름 </td><td>${detail.title}</td></tr>
				<tr><td>연 락 처 </td><td>${detail.telname} ${detail1.tel}</td></tr>
				<tr><td>주    소 </td><td>${detail.addr1} ${detail1.addr2}</td></tr>
				<tr><td>홈페이지 </td><td>${detail.homepage}</td></tr>
			</table>
			<hr/>
			<table>

				<tr>
					<td></td>
				</tr><tr>
					<td>
					${detail.overview}
					</td>
				</tr>
		</table>
		<hr/>
		</div>

	</div>

	
	<div class="" id="">
		<div class="" id="" style="margin-bottom: 20px;">
			<button class="btn_tab selected_tab" id="tab_boardDetail_01" onclick="tabSwitch(event);">리뷰</button>
			<button class="btn_tab" id="tab_boardDetail_02" onclick="tabSwitch(event);">주변관광지</button>
		</div>
		<div class="tab_view" id="tab1_boardDetail">
		<!-- 리뷰 보기 -->
		<p>이 곳을 방문하셨다면 리뷰를 남겨 보세요. 		
		<button class="btn_middle btn_primary" style="float: right" onclick="reviewModalOpen(event);">리뷰 쓰기</button>
		</p>
		<hr>
			<c:forEach end="5" begin="1" var="i">
				<table>
				<tr>
				<td class="image" rowspan="4">이미지</td>
				<td>작성자 : 박나연</td>
				<td >작성일시 : 2022-01-24</td>
				
				</tr>
					<tr>
					<td colspan="5">제목 : 너무 재밌어요!!!!</td>
					</tr>
					<tr>
					<td colspan="5">가야 할 때가 언제인가를 분명히 알고 가는 이의 뒷모습은 얼마나 아름다운가. 봄 한 철 격정을 인내한 나의 사랑은 지고 있다. 분분한 낙화. 결별이 이룩하는 축복에 싸여 지금은 가야 할 때 무성한 녹음과 그리고 머지않아 열매 맺는 가을을 향하여 나의 청춘은 꽃답게 죽는다. 헤어지자 섬세한 손길을 흔들며 하롱하롱 꽃잎이 지는 어느 날 나의 사랑, 나의 결별 샘터에 물 고이듯 성숙하는 내 영혼의 슬픈 눈.</td>
					</tr>
				</table>
				<hr />	
			</c:forEach>
			
		</div>
		
		<div class="tab_hidden" id="tab2_boardDetail">
		<!-- 주변 관광지 -->
			<div class="square_list" id="div_boardDetail_03">
				<c:forEach var="seeSight" items="${seeSight}">
					<div class="" id="" onclick="viewDetailSeeSight(${seeSight.contentid}, 	${seeSight.contenttypeid}, ${seeSight.mapx}, ${seeSight.mapy})">
						<table id="tb_boardDetail">
						<c:choose>
						<c:when test="${seeSight.firstimage != null}">
						<tr><td><img alt="${seeSight.title}" src="${seeSight.firstimage}" class="img_boardList"></td></tr>
						</c:when>
						<c:otherwise>
						<tr><td><img alt="${seeSight.title}" src="/board/noImages.jpg" class="img_boardList"></td></tr>
						</c:otherwise>
						</c:choose>
						<tr><td>${seeSight.title}</td></tr>
						</table>				
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</section>
	
	<form action="/festival/detail" method="POST" id="form_boardDetail">
		<input type="hidden" id="input_boardDetail_contentid" name="contentid"/>
		<input type="hidden" id="input_boardDetail_contenttypeid" name="contentTypeId"/>
		<input type="hidden" id="input_boardDetail_mapx" name="mapx"/>
		<input type="hidden" id="input_boardDetail_mapy" name="mapy"/>
	</form>
	
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>
	<c:import url="/board/boardModal.jsp"></c:import>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

</html>