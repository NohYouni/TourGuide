<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member Delete Modal</title>
<link rel="stylesheet" href="/css/adminModalCss.css">
</head>
<body>
<div class="memberRemove">
	<h3>회원을 탈퇴하시겠습니까?</h3>
	<form action="/adminMemDel" method="post" name="frm" onsubmit="return check()">
		<table>
			<tr>
				<td><input type="radio" value="1" name="rsn1"></td>
				<td>욕설</td>
			</tr>
			<tr>
				<td><input type="radio" value="2" name="rsn2"></td>
				<td>음란성 게시글</td>
			</tr>
			<tr>
				<td><input type="radio" value="3" name="rsn3"></td>
				<td>폭력성 게시글</td>
			</tr>
			<tr>
				<td><input type="radio" value="4" name="rsn4"></td>
				<td>괴롭힘</td>
			</tr>
			<tr>
				<td><input type="radio" value="5" name="rsn5"></td>
				<td>도용</td>
			</tr>
			<tr>
				<td><input type="radio" value="6" name="rsn6"></td>
				<td>도배</td>
			</tr>
			<tr>
				<td><input type="radio" value="7" name="rsn7"></td>
				<td>홍보성 게시물</td>
			</tr>
			<tr>
				<td><input type="radio" value="8" name="rsn8"></td>
				<td>기타</td>
			</tr>
		</table><br/>
		<div class="center">
		<input type="hidden" value=${memId } name="memId"/>
		<input class="btn_middle btn_primary" type="submit" value="탈퇴">
		<input class="btn_middle btn_primary" type="button" onclick="pageClose()" value="취소">
		</div>
	</form>

</div>
<script type="text/javascript" src="/js/admin.js"></script>	

</body>
</html>