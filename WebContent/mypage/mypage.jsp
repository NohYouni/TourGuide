<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/mypage/mypage.css">
<c:import url="/header.jsp"></c:import>
</head>
<body>
<hr />
	<table class="table">
		<tr>
			<td><p>${mmid}님 환영합니다. &nbsp;<button class="btn_five btn_primary" onclick="location.href='/mypage/pwdCheck.jsp'">내 정보 수정</button></p>
			</td>
			
		</tr>
		<tr>
			<td>내 리뷰 관리</td>
			<td class="more"><a href="../myReviewList">더 보기</a></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td>내 찜 관리</td>
			<td class="more"><a href="../myZzimList">더보기</a></td>
		</tr>
		<tr>
		
			<td colspan=2 class="box"><div style="width:100%; height:100%; overflow:auto"><c:forEach var="rvlist"
					items="${rvlists}">
					<c:if test="${rvlist.delCode==0}">
						<table>
							<tr>
								<td>행사명 : ${rvlist.fvNo}</td>
								<td>제목 : ${rvlist.rvSub}</td>
							</tr>
						</table>
						<hr />
						<br />
					</c:if>
				</c:forEach></div></td>
				
			<td>&nbsp;&nbsp;&nbsp;</td>
			
			<td colspan=2 class="box left"><div style="width:100%; height:100%; overflow:auto"><c:forEach var="zzlist" items="${zzlists}">
					<table>
						<tr>
							<td>행사번호는 ${zzlist}입니다</td>
						</tr>
					</table>
					<hr />
					<br />
				</c:forEach></div></td>
				
		</tr>
	</table>
	<br />
</body>
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>