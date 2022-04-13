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

<c:forEach var="list" items="${lists}"> 
	<table class="zzim">
	
			<tr>
				<td> 행사번호는 ${list}</td>
				<td class="right"><button>삭제</button></td>
			</tr>
	</table>
	<hr />
</c:forEach>
</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>