<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/css/board.css">
<style>
.select_loca{
	width : 180px;
	height : 2em;
	radius : 10px;	
}

#img_boardList{
	width : 210px;
	height : 300px;
}

#div_boardList_searchbar{
	margin-bottom: 20px;
}





</style>
</head>
<body>
<!-- <header> -->
<!--         <div id="" class=""> -->
<!--             <ul class="inlineUl rigthUl"> -->
<!--               <li>로그아웃</li> -->
<%--               <li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp">마이페이지</a></li> --%>
<%--               <li><a href="${pageContext.request.contextPath}/admin/adminPage.jsp">관리자페이지</a></li> --%>
<!--             </ul> -->
<!--         </div> -->
<!--         <div id="" class="siteName"> -->
<!--             <a id=>어쩌다 여행</a> -->
<!--         </div> -->
<!--     </header> -->
<!--     <nav> -->
<!--         <ul class="inlineUl"> -->
<!--         <li><a href="" class="selected_menu">전국의 행사</a></li> -->
<!--         <li><a href="">이벤트</a></li></ul><hr> -->
<!--     </nav> -->
	<c:import url="/header.jsp"></c:import>
	<section>
		<div class="" id="div_boardList_searchbar">
			<select class="select_loca" name="location" id="select_boardList">
			</select>
			
			<input type="text" /> <button class="btn_middle btn_primary" >검색</button>
		</div>
		
		<div class="square_list" id="div_boardList_article">
		<c:forEach begin="1" end="32">
			<div class="" id="">
				<table id="tb_boardList">
				<tr><td><img alt="no image" src="/board/noImages.jpg" id="img_boardList"></td></tr>
				<tr><td>신나는 축제입니다.</td></tr>
				</table>				
			</div>
		</c:forEach>
		</div>
		
		<div class="" id=""><button class="btn-longbox">더보기</button></div>
	</section>
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

<script src="/board/locations.json" type="text/javascript"></script>
</html>