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
	<form action="">
		<div class="textLeft">
			<input type="radio" value="욕설">욕설<br/>
			<input type="radio" value="음란성 게시글">음란성 게시글<br/>
			<input type="radio" value="폭력성 게시글">폭력성 게시글<br/>
			<input type="radio" value="괴롭힘">괴롭힘<br/>
			<input type="radio" value="도용">도용<br/>
			<input type="radio" value="도용">도배<br/> 
			<input type="radio" value="도용">홍보성 게시물<br/> 
			<input type="radio" value="도용">기타<br/>  
		</div>
		<input type="submit" value="탈퇴">
		<input type="button" onclick="closeModal()" value="취소">
	</form>
</div>
</body>
</html>