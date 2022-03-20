<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/header.jsp"></c:import>
<style>
.em{
	width: 600px;
}


.image{
	border: 2px solid black;
	width: 200px;
}
.right{
	text-align: right;
}
</style>
</head>
	
<body>
<h1>내 리뷰 보기</h1>
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
	<tr>
	<td colspan="3"></td>
		<td class="right"><button>리뷰 수정</button></td>
		<td class="right"><button>리뷰 삭제</button></td>
	</tr>
</table>
<hr />	
</c:forEach>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>