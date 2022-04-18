<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<link rel="stylesheet" href="/mypage/mypage.css">

<meta charset="UTF-8">
<title>비밀번호 변경</title>
<c:import url="/header.jsp"></c:import>
</head>
<hr />
<br />
<body>
	<form action="/pwdChange" method="post">
		<table class="password">
			<tr>
				<td>새 비밀번호 :</td>
				<td><input type="text" placeholder="새 비밀번호를 입력해 주세요" name="newPwd" /></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인 :</td>
				<td><input type="text" placeholder="새 비밀번호를 한번더 입력해 주세요" name="newPwdCheck" /></td>
			</tr>
			<tr>
			<td colspan="2"><input  class="btn_middle btn_primary" type="submit" value="변경" />&nbsp;&nbsp;&nbsp; <input  class="btn_middle btn_primary" type="button" value="취소" onclick="location.href='mypage'"> </td>	
			</tr>
		</table>
		
	</form>
	<br />
	<hr />
	<p class="right">회원탈퇴를 원하시면 회원 탈퇴 버튼을 눌러주세요.  <button  class="btn_middle btn_primary" onclick="out_popup();">회원 탈퇴</button></p>
</body>
	<script type="text/javascript" src="/mypage/signOutPopup.js"></script>
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>