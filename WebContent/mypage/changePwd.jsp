<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
.why {
	width: 200px;
	height: 100px;
	margin-left: auto;
	margin-right: auto;
	margin-top: auto;
	margin-bottom: auto;
	text-align: center;
}

.password {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 10px red;
}

.modal .bg {
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
}

.modalBox {
	position: absolute;
	top: 50%;
	left: 60%;
	background-color: #fff;
	width: 400px;
	height: 200px;
	padding: 15px;
}

.hidden {
	display: none;
}
.out{
	text-align: right;
}
</style>
<link rel="stylesheet" href="/css/commonCss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/header.jsp"></c:import>
</head>

<body>
	<form action="../changePwd" class="password" method="post">
		새 비밀번호번호 : <input type="text" placeholder="비밀번호를 입력해 주세요" name="mmPwd"/> <br /> 
		비밀번호 확인 : <input type="text" placeholder="새 비밀번호를 입력해 주세요" name="newPwd"/> <br /> 
		<input type="submit" value="변경" />
		<input type="button" value="취소" onclick=" href='mypage.jsp'">
			</form>
	<hr />

		<p class="out">
			회원탈퇴를 원하시면 회원 탈퇴 버튼을 눌러주세요. <input type="button" class="openBtn" value="탈퇴하기">
		</p>
		<div class="modal hidden">
			<div class="bg"></div>
			<div class="modalBox">
				<form action="signOut">
					<table class="why">
						<tr>
							<td colspan="2">정말 탈퇴 하시겠습니까?</td>
						</tr>
						<tr>
							<td><input type="button" class="closeBtn" value="취소" /></td>
							<td><input type="submit" value="탈퇴" /></td>
						</tr>

					</table>
				</form>
			</div>

		</div>


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
<footer>
	<c:import url="/footer.jsp"></c:import>
</footer>
</html>