<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.password{
	text-align: center;
    margin-left:auto; 
    margin-right:auto;
}
</style>
<link rel="stylesheet" href="/css/commonCss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/header.jsp"></c:import>
</head>
	
<body>
<form action="../checkPwd" class="password" method="post">
<label for="check">비밀번호 확인 :</label> <input type="text" id="check" placeholder="내용을 입력해 주세요" name="pwd" /> <br />

<input type="submit" value="확인" />
<input type="button" value="취소" onClick="location.href='../mypage/mypage.jsp'">
</form>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>