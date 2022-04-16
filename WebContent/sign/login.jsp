<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/css/commonCss.css">

</head>
<body>
<c:import url="/header.jsp"></c:import>
	<nav>
        <ul class="inlineUl">
        <li><a style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
	<h1>로그인</h1>
	<br />
	<form action="/login" method="post">
		<table>
			<tr>
				<td class="first"><label for="id">아 이 디  </label></td>
				<td class="second"><input type="text" name="mmId" id="id" class="input"
					placeholder="아이디를 입력해주세요" /></td>
			</tr>
		
			<tr>
				<td class="first"><label for="pwd">비 밀 번 호  </label></td>
				<td class="second"><input type="text" name="mmPwd" id="pwd" class="input"
					placeholder="비밀번호를 입력해주세요" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인" class="btn_primary btn_middle"/></td>
				<td><input type="reset" value="취소" class="btn_primary btn_middle" /></td>
			</tr>
		</table>
		
</body>
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>