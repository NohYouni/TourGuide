<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 찜 목록</title>

<link rel="stylesheet" href="/css/commonCss.css">
<link rel="stylesheet" href="/css/mypage.css">
</head>
<hr />
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
	<h1>내 찜</h1>
	<br />
	<c:forEach var="zzlist" items="${zzlists}">
		<table class="zzim">
			
			<tr>
				<td>행사번호는 ${zzlist}</td>
				<td class="right"><button class="btn_middle btn_primary" onclick="zz_popup(${zzlist})">찜 취소</button></td>
				<br />
				<hr>
			</tr>
			
		</table>
		
	</c:forEach>

</body>
<script type="text/javascript" src="/js/mypage.js"></script>
	<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>