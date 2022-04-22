<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/adminModalCss.css">
</head>
<body>
<div class="cheakPage">
	<h3>회원 상세 정보 입니다.</h3>
	<table>
		<tr><td>아이디</td><td class="admin_check_left">  ${vo.mmId }</td></tr>
		<tr><td>이메일</td><td class="admin_check_left">  ${vo.mmEmail }</td></tr>
		<tr><td>가입날짜</td><td class="admin_check_left">  ${vo.joinDate }</td></tr>
		<tr><td>최근접속일</td><td class="admin_check_left">  ${vo.llDate }</td></tr>
		<tr>
			<td>상태</td>
			<td>
				<c:if test="${vo.stsCode == 0}"> 관리자</c:if> 
				<c:if test="${vo.stsCode == 1}"> 회원</c:if> 
				<c:if test="${vo.stsCode == 2}"> 비회원</c:if>
			</td>
		</tr>
		<c:if test="${vo.stsCode == 2}">
			 <tr><td>식제 날짜</td><td>  ${vo.outDate }</td></tr>
		 </c:if>		
	</table>	 

	 <br/>
	<button class="btn_middle btn_primary" onclick="pageClose()">확인</button>
</div>
<script type="text/javascript" src="/js/admin.js"></script>	
</body>
</html>