<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

[type='password']{
	border-radius: 10px;
	height : 2em;
	width: 400px;
	
}

.first {
	width: 150px;
	text-align: left;
}

.second {
	width: 500px;
	text-align: left;
}

.third {
	width: 150px;
	text-align: left;
}

.center {
	text-align: center;
}

</style>
<title>회원가입 페이지</title>
<link rel="stylesheet" href="/css/commonCss.css">
<script type="text/javascript" src="/js/mmmst.js"></script>
<c:import url="/header.jsp"></c:import>
</head>
<body>
	<h1>회원가입</h1>
	<br />
	<form action="/signUp" method="post" name="frm">
		<table>
			<tr>
				<td class="first"><label for="id">아 이 디 : </label></td>
				<td class="second"><input type="text" name="mmId" id="id" class="input"
					placeholder="내용을 입력해주세요" /></td>
				<td><input type="hidden" name="checkId">
				<td class="third"><input type="button"
					class="btn_primary btn_middle" value="중복체크" onclick="chkId()"></td>
			</tr>
		</table>
		<hr />
		<table>
			<tr>
				<td class="first"><label for="pwd">비 밀 번 호 : </label></td>
				<td class="second"><input type="password" name="mmPwd" id="pwd" class="input"
					placeholder="내용을 입력해주세요" /></td>
				<td class="third"></td>
			</tr>
		</table>
		<hr />
		<table>
			<tr>
				<td class="first"><label for="pwdCk">비밀번호 확인 : </label></td>
				<td class="second"><input type="password"  name="mmPwdChk"id="pwdChk" class="input"
					placeholder="내용을 입력해주세요" /></td>
				<td class="third"></td>
			</tr>
		</table>
		<hr />
		<table>
			<tr>
				<td class="first"><label for="email">이 메 일 : </label></td>
				<td class="second"><input type="text" name="mmEmail" id="email" class="input"
					placeholder="내용을 입력해주세요" /></td>
				<td class="third"><input type="button"
					class="openBtn btn_primary btn_middle" value="이메일 인증" /></td>
			</tr>
			<tr>
				<td class="first"><label for="check">인 증 번 호 : </label></td>
				<td class="second"><input type="text" id="check" class="input"
					placeholder="내용을 입력해주세요" /></td>
				<td class="third"><button class="btn_primary btn_middle">확인</button></td>
			</tr>
		</table>
		<hr />
		<div class="center">
			<input type="submit" class="btn_primary btn_middle" value="가입" onclick="return chkSignUp()"/> 
			<input type="button" class="btn_primary btn_middle" value="취소" onclick="location.href='../index.jsp'"/>
		</div>
	</form>
	<div class="modal hidden">
		<div class="bg"></div>
		<div class="modalBox modal_Align_center">
			<form action="">
				<p>해당 이메일로 인증번호가 발송되었습니다.</p> 
				<input type="button" class="closeBtn btn_primary btn_middle" value="취소" />
			</form>
		</div>
	</div>
</body>

<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>