<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 찜 목록</title>
<c:import url="/header.jsp"></c:import>
<link rel="stylesheet" href="/css/mypage.css">
</head>
<hr />
<h1>내가 찜한 목록</h1>
<br />
<body>
	<c:forEach var="zzlist" items="${zzlists}">
		<table class="zzim">
			<tr>
				<td>행사번호는 ${zzlist}</td>
				<td class="right"><button class="btn_middle btn_primary" onclick="zz_popup(${zzlist})">찜 취소</button></td>
			</tr>
		</table>
		<hr />
	</c:forEach>
	<br />
</body>
<script type="text/javascript" src="/js/mypage.js"></script>
	<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>