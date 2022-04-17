<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.table{
    margin-left:auto; 
    margin-right:auto;
	}
.more {
	float: right;
}
.box {
  	width: 400px;
  	height: 400px;
  	border: 2px solid black;
 	margin: 15px;
}

</style>
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commonCss.css">

</head>
	
<body>
<%
	String mmId = (String)session.getAttribute("mmId");
if(mmId==null){response.sendRedirect("../sign/login.jsp");}
else{
%>

	<c:import url="/header.jsp"></c:import>
	<nav>
        <ul class="inlineUl">
        <li><a class="" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
    
    
<table class="table">
<tr>
<td>${mmId} 님 환영합니다. <button onclick="location.href='/mypage/checkPwd.jsp'">내 정보 수정</button></td>

</tr>
	<tr>
		<td>내 리뷰 관리</td>
		<td class="more"><a href="../myReview">더 보기</a></td>
		<td> &nbsp;&nbsp;&nbsp; </td>
		<td>내 찜 관리</td>
		<td class="more"><a href="../myZzim">더보기</a></td>
	</tr>
	<tr>
	<td colspan=2 class="box">리뷰 박스</td>
	<td> &nbsp;&nbsp;&nbsp; </td>
	<td colspan=2 class="box left">찜 박스</td>
	</tr>


</table>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
<%} %>
</html>