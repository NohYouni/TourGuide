<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="/css/silde.css">
<link rel="stylesheet" href="/css/commonCss.css">

</head>
<style>
.rigthUl {
	float: right;
}

.leftUl {
	float: left;
}

.rect {
	width: 400px;
	height: 400px;
	border: 2px solid black;
	margin: 15px;
}

.srect {
	width: 300px;
	height: 100px;
	border: 2px solid black;
	margin: 20px auto;
}

.main {
	margin: 5px;
}
</style>
<body>
	<c:import url="/header.jsp"></c:import>

	<nav>
		<ul class="inlineUl">
			<li><a class="selected_menu" style="cursor: pointer;"
				onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
			<li><a class="selected_menu" style="cursor: pointer;"
				href="/eventPage/event.jsp" id="a_header_ev">&nbsp;&nbsp;이벤트</a></li>
		</ul>
		<hr>
	</nav>
	<div class="main">
		<div class="rect leftUl">
			<div id="slideShow">
				<div class="square_lists" id="div_boardList_article">
					<c:forEach items="${list}" var="list">
						<c:choose>
							<c:when test="${list.mapx != null}">
								<div class="index_fv" id=""	onclick="viewDetailFestival(${list.contentid}, 	${list.contenttypeid}, ${list.mapx}, ${list.mapy})">
							</c:when>
							<c:otherwise>
								<div class="index_fv" id=""	onclick="viewDetailFestival(${list.contentid}, 	${list.contenttypeid})">
							</c:otherwise>
						</c:choose>
						<table id="tb_boardList">
							<c:choose>
								<c:when test="${list.firstimage != null}">
									<tr><td><img alt="${list.title}" src="${list.firstimage}" class="img_indexboard"></td></tr>
								</c:when>
								<c:otherwise>
									<tr><td><img alt="${list.title}" src="/board/noImages.jpg" class="img_indexboard"></td></tr>
								</c:otherwise>
							</c:choose>
							<tr><td>${list.title}</td></tr>
						</table>	
						</div>				
					</c:forEach>
				</div>	
					<p class="index_fv_controller">
					<span class="index_fv_prev">뒤로</span> 
					<span class="index_fv_next">앞으로</span>
					</p>		
			</div>		
				
		</div>

				
	</div>
	<div class="rect rigthUl">
		<div class="srect">
			검색탭 <a href="eventPage/event.jsp">행사</a><a	href="eventPage/dangchum.jsp">행사확인</a>
		</div>
		<div class="srect">이벤트</div>
		<div class="srect">코로나</div>
	</div>
	<script type="text/javascript" src="/js/silde.js"></script>
	<c:import url="/footer.jsp"></c:import>
</body>
</html>