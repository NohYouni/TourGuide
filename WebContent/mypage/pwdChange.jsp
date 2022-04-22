<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<link rel="stylesheet" href="/css/mypage.css">

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
				<td><input type="password" placeholder="새 비밀번호를 입력해 주세요" id="newPwd" name="newPwd" /></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인 :</td>
				<td><input type="password" placeholder="새 비밀번호를 한번더 입력해 주세요" id="newPwdCheck" name="newPwdCheck" /></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" class="btn_middle btn_primary" value="변경" onclick="return pwdChange('${param.mmPwd}')" />&nbsp;&nbsp;&nbsp; <input  class="btn_middle btn_primary" type="button" value="취소" onclick="location.href='mypage'"> </td>	
			</tr>
		</table>
		
	</form>
	<br />
	<hr />
	<p class="right">회원탈퇴를 원하시면 회원 탈퇴 버튼을 눌러주세요.  <button  class="btn_middle btn_primary" onclick="out_popup();">회원 탈퇴</button></p>
</body>
<script type="text/javascript" src="/js/mypage.js"></script>
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>