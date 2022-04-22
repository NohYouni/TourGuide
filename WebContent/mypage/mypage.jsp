<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/css/mypage.css">
<link rel="stylesheet" href="/css/commonCss.css">

</head>
<body>

	<c:import url="/header.jsp"></c:import>
	<nav>
		<ul class="inlineUl">
			<li><a class="selected_menu" style="cursor: pointer;"
				onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
			<li><a class="selected_menu" style="cursor: pointer;"
				href="/eventPage/event.jsp" id="a_header_ev">이벤트</a></li>
		</ul>
		<hr>
	</nav>
	<table class="table">
		<tr>
			<td class="member">Hi!&nbsp;&nbsp;${mmId}</td>
			<td><button class="btn_five btn_primary" onclick="location.href='/mypage/pwdCheck.jsp'">내 정보 수정</button></td>			
		</tr>
		<tr>
			<td class="mine">내 리뷰 관리</td>
			<td class="more"><a href="../myReviewList">더 보기</a></td>
			<td></td>
			<td class="mine">내 찜 관리</td>
			<td class="more"><a href="../myZzimList">더보기</a></td>
		</tr>
		<tr>
			<td colspan=2 class="box"><div style="width:100%; height:100%; overflow:auto"><c:forEach var="rvlist"
					items="${rvlists}">
					<c:if test="${rvlist.delCode==0}">
						<table>
						<br>
							<tr>
								<td>행사명 : ${rvlist.fvNo}</td>
								<td>제목 : ${rvlist.rvSub}</td>
							</tr>
						</table>

						
					</c:if>
				</c:forEach></div></td>
				
			<td>&nbsp;&nbsp;&nbsp;</td>
			
			<td colspan=2 class="box left"><div style="width:100%; height:100%; overflow:auto"><c:forEach var="zzlist" items="${zzlists}">
					<table>
						<br>
						<tr>
							<td>행사번호 ${zzlist}</td>
						</tr>
					</table>
				
				</c:forEach></div></td>
				
		</tr>
	</table>
	<br />
</body>
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>