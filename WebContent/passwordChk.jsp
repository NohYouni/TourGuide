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
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="header.jsp"></c:import>
</head>
	
<body>
<form action="./pwdchange.jsp" class="password">
비밀번호 확인<input type="text" placeholder="내용을 입력해 주세요" /> <br />

<input type="submit" value="확인" />
<button><a href="mypage.jsp">취소</a></button>
</form>
</body>
<footer><c:import url="footer.jsp"></c:import></footer>
</html>