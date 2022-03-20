<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/board.css">
<style></style>
</head>
<body>
	<c:import url="/header.jsp"></c:import>
	<section>
	<div class="" id=""></div>
	
	<div class="" id="">
		<div class="" id="" style="margin-bottom: 20px;">
			<button class="btn-tab selected_tab" id="tab_boardDetail_01">리뷰</button>
			<button class="btn-tab" id="tab_boardDetail_02">주변관광지</button>
		</div>
		<div class="tab_view" id="tab1_boardDetail">
		<!-- 리뷰 보기 -->
		<p>이 곳을 방문하셨다면 리뷰를 남겨 보세요. 		<button class="btn_middle btn_primary" style="float: right">리뷰 쓰기</button></p>
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
			<div class="square_list" id="div_boardDetail_article">
				<c:forEach begin="1" end="32">
					<div class="" id="">
						<table id="tb_boardDetail">
						<tr><td><img alt="no image" src="/board/noImages.jpg" id="img_boardList"></td></tr>
						<tr><td>신나는 관광지입니다.</td></tr>
						</table>				
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</section>
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>
	
	<div class="" id="modal_boardDetail">
	
	<form action="" method="post">
		<table>
			<tr>
			<td><lable for="rvSb">제목 : </lable></td>
			<td><input type="text" style="width: 500px" name="rvSb"/></td>
			<td><button type="button" class="btn_middle">X</button></td>
			</tr>
			<tr>
			<td><lable for="rvSb">사진 : </lable></td>
			<td><input type="file" style="display: none" name=""/>
				<input type="text" style="width: 500px"/></td>
			<td><button type="button" class="btn_middle">찾아보기</button></td>
			</tr>
	
			<tr>
			<td colspan="3"><textarea rows="5" cols="100" style="width: 600px"></textarea></td>
			</tr>
			<tr>
			<td colspan="3" style="text-align: center;">
			<button class="btn_middle btn_primary">등록</button>&nbsp;&nbsp;
			<button class="btn_middle">취소</button></td>
			</tr>
		</table>
	</form>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

</html>