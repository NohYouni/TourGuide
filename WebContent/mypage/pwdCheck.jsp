<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<link rel="stylesheet" href="/mypage/mypage.css">
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<c:import url="/header.jsp"></c:import>
</head>
<body>
<hr />
<br />
<form action="../pwdCheck" class="password" method="post">
<label for="check">비밀번호 확인 :</label> <input type="text" id="check" placeholder="내용을 입력해 주세요" name="pwd" /> <br /><br />
<input class="btn_middle btn_primary" type="submit" value="확인" />&nbsp;
<input class="btn_middle btn_primary" type="button" value="취소" onClick="location.href='../mypage'">
</form>
<br />
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>