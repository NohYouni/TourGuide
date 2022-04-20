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

hidden{
display:  none;
}

</style>
<link rel="stylesheet" href="/css/commonCss.css">

<body>
<c:import url="/header.jsp"></c:import>

	<nav>
        <ul class="inlineUl">
        <li><a class="selected_menu" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a class="selected_menu" style="cursor : pointer;" href="/eventPage/event.jsp" id="a_header_ev">&nbsp;&nbsp;이벤트</a></li></ul><hr>
    </nav>
	

</head>
	<h1>행운을 잡아라</h1>
	<br />
	<p>숫자 세개를 선택해 주세요 !</p>
	<table>
		<tr>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		</tr>
		<tr>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		<td><img style="width:270px; height: 330px;" src="/noimage.jpg" alt="이미지" /></td>
		</tr>
		<tr>
		<td>
		<table>
	<tr>
	<td class="one hidden">1</td>
	<td class="two hidden">2</td>
	<td class="three hidden">3</td>
	<td class="four hidden">4</td>
	<td class="five hidden">5</td>
	<td class="six hidden">6</td>
	<td class="seven hidden">7</td>
	<td class="eight hidden">8</td>
	<td class="nine hidden">9</td>
	<td class="ten hidden">10</td>
	<td><button class="openBtn">응모</button></td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	<script type="text/javascript" src="/js/event.js"></script>
	<footer ><c:import url="/footer.jsp"></c:import></footer>
</body>

</html>