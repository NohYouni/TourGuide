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
</head>
	
<body>

<c:forEach end="5" begin="1" var="i">
<table class="zzim">
<tr>
<td>&nbsp; <c:out value=" ${i}"/>번째행사 이름입니다.</td>
<td class="right"><button >삭제</button></td>
</tr>
</table>
<hr />	
</c:forEach>

</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>