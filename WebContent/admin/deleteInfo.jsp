<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info</title>
<style>
.cheakPage{
	width: 300px;
	margin: 0 auto;
	text-align: center;
}
body{
	overflow: hidden;
}
</style>
</head>
<body>
<div class="cheakPage">
	<h3>이유를 한 개 이상 선택해 주세요.</h3>
	<button onclick="pageClose()">확인</button>

</div>
<script>
	function pageClose() {
		window.close();
	}
</script>
</body>
</html>