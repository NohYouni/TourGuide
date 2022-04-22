<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	HttpSession ses = request.getSession();
	String errMsg = (String)ses.getAttribute("errMsg");
	if(errMsg == null) errMsg = "";
	
	ses.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commonCss.css">
<script type="text/javascript" src="/js/mmmst.js"></script>
<style type="text/css">

[type='password']{
	border-radius: 10px;
	height : 2em;
	width: 400px;
	
} 

</style>
</head>
<body>
	<c:import url="/header.jsp"></c:import>
	<h1>로그인</h1>
	<br />
	<form action="/login" method="post" name="frm">
		<table>
			<tr>
				<td class="first"><label for="id">아 이 디  </label></td>
				<td class="second"><input type="text" name="mmId" id="id" class="input"
					placeholder="아이디를 입력해주세요" /></td>
			</tr>
		
			<tr>
				<td class="first"><label for="pwd">비 밀 번 호  </label></td>
				<td class="second"><input type="password" name="mmPwd" id="pwd" class="input"
					placeholder="비밀번호를 입력해주세요" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인" class="btn_primary btn_middle" onclick="return chkLogin()"/></td>
				<td><input type="reset" value="취소" class="btn_primary btn_middle" onclick="location.href='../index.jsp'"/></td>
				<td><input type="button" value="회원가입" class="btn_primary btn_middle" onclick="location.href='signUp.jsp'"></td>
			</tr>
		</table>
	</form>
	<br>
	<div id="errMsg" style="color:#1a9999; font-family: 'Nanum Pen Script', cursive;
				font-size:25px;"><%= errMsg %></div>
</body>
<footer>
	<c:import url="/footer.jsp" ></c:import>
</footer>
</html>