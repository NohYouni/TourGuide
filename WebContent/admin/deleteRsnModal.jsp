<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/admin/adminModalCss.css">
</head>
<body>
<div class="cheakPage">
	<h3>삭제/탈퇴 이유 목록입니다.</h3>
	<c:forEach var="rsn" items="${rsns }">
		${rsn}<br/>
	</c:forEach>
	<br/>
	<button class="btn_middle btn_primary" onclick="pageClose()">확인</button>
</div>
<script>
	function pageClose() {
		window.close();
	}
</script>
</body>
</html>