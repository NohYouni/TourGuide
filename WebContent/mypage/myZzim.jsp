<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.zzim{
	width: 900px;

}
.right{
	text-align: right;
}


</style>
<link rel="stylesheet" href="/css/commonCss.css">
</head>
	
<body>
	<c:import url="/header.jsp"></c:import>
	<nav>
        <ul class="inlineUl">
        <li><a class="" style="cursor : pointer;" onclick="festivalBoardLoad(8, 0)" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
    

<c:forEach var="list" items="${lists}"> 
	<table class="zzim">
	
			<tr>
				<td> 행사번호는 ${list}</td>
				<td class="right"><button><a href="myZzimOff?fvno=${list}">삭제</a></button></td>
			</tr>
	</table>
	<hr />
</c:forEach>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>