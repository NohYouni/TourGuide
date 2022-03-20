<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<style>
.why{
	
	width : 200px;
	height : 100px;
    margin-left:auto; 
    margin-right:auto;
    margin-top: auto;
    margin-bottom: auto;
    text-align: center;
}
.password{
	text-align: center;
    margin-left:auto; 
    margin-right:auto;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/header.jsp"></c:import>
</head>
	
<body>
<form action="./pwdchange.jsp" class="password">
새 비밀번호번호<input type="text" placeholder="내용을 입력해 주세요" /> <br />
비밀번호 확인<input type="text" placeholder="내용을 입력해 주세요" /> <br />
<input type="submit" value="변경" />
<button><a href="mypage.jsp">취소</a></button>
</form>
<hr />
<form action="" >
<p class="out">회원탈퇴를 원하시면 회원 탈퇴 버튼을 눌러주세요. 
<input type="button" class="openBtn" value="탈퇴하기" ></p>
	<div class="modal">
	  <div class="bg"></div>
		<div class="modalBox">
			<table class="why">
			<form action="" >
				<tr>
					<td colspan="2">정말 탈퇴 하시겠습니까?</td>
				</tr>
				<tr>
				<td><input type="button" class="closeBtn" value="취소" /></td>	
				<td><input type="submit" value="탈퇴" /></td>
				</tr>
			</form>
			</table>
			
		</div>

	</div>
	
</form>
<script>
  const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
  }

  const close = () => {
    document.querySelector(".modal").classList.add("hidden");
  }

  document.querySelector(".openBtn").addEventListener("click", open);
  document.querySelector(".closeBtn").addEventListener("click", close);
  document.querySelector(".bg").addEventListener("click", close);

</script>


</body>
<footer><c:import url="/footer.jsp"></c:import></footer>
</html>