<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/header.jsp"></c:import>
<style>
.number {
	width: 30px;
	border: 2px solid black;
	text-align: center;

}
table {
	margin-left: auto; 
	margin-right: auto;
	
}

.image{

	border: 2px solid black;
	width: 300px;
	height: 150px;
}
</style>

</head>
	<h1>행운을 잡아라</h1>
	<br />
	<p>숫자 세개를 선택해 주세요 !</p>
<body>

	<table>
		<tr>
		<td class="image">이미지</td>
		
		</tr>
		
	<tr>
	<table>
	<tr>
	<td class="number">3</td>
	<td class="number">6</td>
	<td class="number">8</td>
	<td><button>응모</button></td>
	</tr>
	</table>
	</tr>
	</table>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>