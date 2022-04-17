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

</head>
	
<body>
	<c:import url="/header.jsp"></c:import>
	<nav>
        <ul class="inlineUl">
        <li><a class="" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
    
<form action="../checkPwd" class="password" method="post">
<label for="check">비밀번호 확인 :</label> <input type="text" id="check" placeholder="내용을 입력해 주세요" name="pwd" /> <br />

<input type="submit" value="확인" />
<input type="button" value="취소" onClick="location.href='../mypage/mypage.jsp'">
</form>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>