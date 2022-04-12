<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member Delete Modal</title>
<style>
.textLeft, .memberRemove p{
	text-align: left;
}
</style>
</head>
<body>
<div class="memberRemove">
	<p>회원을 탈퇴하시겠습니까?</p>
	<form action="/admins/delete">
		<div class="textLeft">
			<input type="radio" value="1" name="rsn1">욕설<br/>
			<input type="radio" value="2" name="rsn2">음란성 게시글<br/>
			<input type="radio" value="3" name="rsn3">폭력성 게시글<br/>
			<input type="radio" value="4" name="rsn4">괴롭힘<br/>
			<input type="radio" value="5" name="rsn5">도용<br/>
			<input type="radio" value="6" name="rsn6">도배<br/> 
			<input type="radio" value="7" name="rsn7">홍보성 게시물<br/> 
			<input type="radio" value="8" name="rsn8">기타<br/>  
		</div>
		<input type="submit" value="탈퇴">
		<input type="button" onclick="closeModal()" value="취소">
	</form>
	<%=request.getParameter("memId") %>
</div>
</body>
</html>