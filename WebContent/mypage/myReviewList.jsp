<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 리뷰 목록</title>
<c:import url="/header.jsp"></c:import>
<link rel="stylesheet" href="/css/mypage.css">
</head>
<body>
<hr />
<h1>내 리뷰 목록</h1>
<br />
<c:forEach var="rvlist" items="${rvlists}">
<c:if test="${rvlist.delCode==0}">
<table style="width : 980px;">
<tr>
<td rowspan="4">
<c:if test="${empty rvlist.img1}"> <img style="width: 200px; height: 200px;" src="/images/noimage.jpg" alt="이미지" /> </c:if>
<c:if test="${not empty rvlist.img1}"><img style="width: 200px; height: 200px;" src="/images/${rvlist.img1}" alt="이미지" /> </c:if> </td>
<td>작성자 : ${rvlist.mmId}</td>
<td>작성일시 : ${rvlist.rgtDate}</td>
</tr>
	<tr>
	<td colspan="5"> 제목 : ${rvlist.rvSub}</td>
	</tr>
	<tr>
	<td colspan="5">${rvlist.rvCnts}</td>
	</tr>
	<tr>
	<td colspan="3"></td>
		<td class="right"><button class="btn_middle btn_primary" style="float: right;" onclick="rvu_popup(${rvlist.fvNo});">리뷰 수정</button></td>
		<td class="right"><button class="btn_middle btn_primary" style="float: right;" onclick="rvd_popup(${rvlist.fvNo});">리뷰 삭제</button></td>
	</tr>
</table>
<hr />	
</c:if>
</c:forEach>
<br />
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
<script type="text/javascript" src="/js/mypage.js"></script>



</html>