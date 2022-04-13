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
<c:import url="/header.jsp"></c:import>
</head>
	
<body>
<%
	String mmId = (String)session.getAttribute("mmId");
if(mmId==null){response.sendRedirect("../sign/login.jsp");}
else{
%>
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