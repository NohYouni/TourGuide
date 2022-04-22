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
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
</head>

<body>
	<c:import url="/header.jsp"></c:import>

	<nav>
        <ul class="inlineUl">
        <li><a class="selected_menu" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a class="selected_menu" style="cursor : pointer;" href="/eventPage/event.jsp" id="a_header_ev">&nbsp;&nbsp;이벤트</a></li></ul><hr>
    </nav>
    
	<section>
	
	<div class="" id="">
	
		<div id ="div_boardDetail_04">

			<table>
				<tr><td rowspan="5" colspan="2"><img src="${detail.firstimage }" alt="" class="img_boardDetail"/></td><td></td><td></td></tr>
				<tr><td>행사 이름 </td><td>${detail.title}</td>
					<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${like }</td>
					<td><button class="btn_middle btn_primary" type="button"onclick="fvLkSelect(${detail.contentid },${detail.contenttypeid},'y')">찜하기</button></td></tr>
				<tr><td>연 락 처 </td><td>${detail.telname} ${detail.tel}</td></tr>
				<tr><td>주    소 </td><td>${detail.addr1} ${detail.addr2}</td></tr>
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
		<button class="btn_middle btn_primary" style="float: right" onclick="brwPopup('${mmId}','${fvNo}')">리뷰 쓰기</button>
		</p>
		<hr>
		<c:choose>
			<c:when test="${review != null}">
				<c:forEach items="${review}" var="review">
					<c:if test="${review.delCode==0}">
						<table style="width: 980px;">
							<tr>
								<td rowspan="4"><c:if test="${empty review.img1}">
										<img style="width: 200px; height: 200px;"
											src="/noImage.png" alt="이미지" />
									</c:if> <c:if test="${not empty review.img1}">
										<img style="width: 200px; height: 200px;"
											src="/images/${review.img1}" alt="이미지" />
									</c:if></td>
								<td>작성자 : ${review.mmId}</td>
								<td>작성일시 : ${review.rgtDate}</td>
							</tr>
							<tr>
								<td colspan="5">제목 : ${review.rvSub}</td>
							</tr>
							<tr>
								<td colspan="5">${review.rvCnts}</td>
							</tr>
						</table>
						<hr />
					</c:if>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<table>
					<tr>
						<td>첫 리뷰를 작성해주세요. ^^</td>
					</tr>

				</table>
				<hr />
			</c:otherwise>
		</c:choose>
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
<!-- 주변관광지 상세  --> 	
	<form action="/festival/detail" method="POST" id="form_boardDetail">
		<input type="hidden" id="input_boardDetail_contentid" name="contentid"/>
		<input type="hidden" id="input_boardDetail_contenttypeid" name="contentTypeId"/>
		<input type="hidden" id="input_boardDetail_mapx" name="mapx"/>
		<input type="hidden" id="input_boardDetail_mapy" name="mapy"/>
	</form>
<!-- 찜 폼 -->	
	<form action="/fvLkInsert" method="POST" id="form_fvLk">
		<input type="hidden" id="input_form_fvLk_contentid" name="contentid"/>
		<input type="hidden" id="input_form_fvLk_contenttypeid" name="contentTypeId"/>
		<input type="hidden" id="input_form_fvLk_mapx" name="mapx"/>
		<input type="hidden" id="input_form_fvLk_mapy" name="mapy"/>
		<input type="hidden" id="input_form_fvLk_fvLk" name="fvLk"/>
	</form>
	
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>

<%-- <div class="" id="modalBack_boardDetail"></div>
<div class="" id="modal_boardDetail">	
	<form action="/festival/createReview" method="post" id="form_boardModal">
		<input type="hidden" style="width: 400px" name="contentid" value="${detail.contentid}"/>
		<input type="hidden" style="width: 400px" name="mmId" value="${sessionScope.mmId}" id="hidden_boardDetail_mmid"/>
		<input type="hidden" style="width: 400px" name="mapx" value="${detail.mapx}"/>
		<input type="hidden" style="width: 400px" name="mapy" value="${detail.mapy}"/>
		<table>
			<tr>
			<td><lable for="rvSb">제목 : </lable></td>
			<td><input type="text" style="width: 400px" name="rvSb"/></td>
			<td><button type="button" class="btn_middle" onclick="reviewModalClose()">X</button></td>
			</tr>
			<tr>
			<td><lable for="file">사진 : </lable></td>
			<td><input type="file" style="display: none" name=""/>
				<input type="text" style="width: 400px"/></td>
			<td><button type="button" class="btn_middle">찾아보기</button></td>
			</tr>
	
			<tr>
			<td colspan="3"><textarea rows="20" cols="100" style="width: 520px" name="rvCnts"></textarea></td>
			</tr>
			<tr>
			<td colspan="3" style="text-align: center;">
			<button type="button" onclick="createReview()" class="btn_middle btn_primary" >등록</button>&nbsp;&nbsp;
			<button type="button" class="btn_middle" onclick="reviewModalClose()">취소</button></td>
			</tr>
		</table>
	</form>
	</div>
 --%>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

</html>