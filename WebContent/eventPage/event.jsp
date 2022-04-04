<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
.number {
	width: 30px;
	border: 2px solid black;
	text-align: center;

}
table {
	margin-left: auto; 
	margin-right: auto;
	
}

.image{

	border: 2px solid black;
	width: 300px;
	height: 150px;
}
</style>
<link rel="stylesheet" href="/css/commonCss.css">

<body>
<c:import url="/header.jsp"></c:import>

	<nav>
        <ul class="inlineUl">
        <li><a style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a class="selected_menu"  href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
</head>
	<h1>행운을 잡아라</h1>
	<br />
	<p>숫자 세개를 선택해 주세요 !</p>
	<table>
		<tr>
		<td class="image">이미지</td>
		
		</tr>
		
	<tr>
	<table>
	<tr>
	<td class="number">3</td>
	<td class="number">6</td>
	<td class="number">8</td>
	<td><button class="openBtn">응모</button></td>
	</tr>
	</table>
	</tr>
	</table>
	<div class="modal hidden">
		<div class="bg"></div>
		<div class="modalBox modal_Align_center">
			<form action="">
				<p>choose jstl로 import 하는 페이지 다르게 해서
				로그인 / 기참여자 여부 모달로 하기
				</p> 
				<input type="button" class="closeBtn btn_primary btn_middle" value="취소" />
			</form>
		</div>
	</div>
	<footer ><c:import url="/footer.jsp"></c:import></footer>
</body>

</html>