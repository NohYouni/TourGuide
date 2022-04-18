<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
[type='text']{
	border-radius: 10px;
	height : 2em;
	width: 300px;	
}
.btn_primary{
	background-color: #25d8d8;
	color : #ffffff;
}
.btn_middle{
    position: relative;
    height : 2em;
    width : 80px;
    border: none;
    display: inline-block;
/*     padding: 0px 30px; */
    border-radius: 10px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    cursor: pointer;
 }
</style>
<title>아이디 중복확인창</title>
<script type="text/javascript" src="/js/mmmst.js"></script>
</head>
<body>
<form action="checkId" method="get" name="frm">
<table>
	<tr>
		<td><label for="id">아 이 디 확인 :</label></td>
		<td class="text"><input type="text" name="mmId" value="${mmId}"></td>
	</tr>
	<tr>		
		<td>${ message }
			<!-- 만약 사용가능한 아이디의 경우 사용버튼을 생성 -->
		<td><c:if test="${result==-1}">
				<input type="button" class="btn_primary btn_middle" value="사용" onclick="idOk()">
			</c:if>
			<!-- 사용 불가능한 아이디응이 경우 미생성 -->
			<c:if test="${result==1}">
				<script type="text/javascript">
					openner.document.frm.mmId.value="";
				</script>
			</c:if>
		</td>
	</tr>
</table>
</form>
</body>
</html>