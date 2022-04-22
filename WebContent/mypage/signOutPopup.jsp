<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 팝업</title>
<link rel="stylesheet" href="/css/mypage.css">
</head>
<body>

		<table class="popup">
			<tr>
				<td colspan="2">정말 탈퇴 하시겠습니까?</td>
			</tr>
			<tr>
				<td><button  class="btn_middle btn_primary" onclick="opener.location.href='/signOut'; self.close();">탈퇴</button></td>
				<td><button  class="btn_middle btn_primary" onclick="self.close();">취소</button></td>
			</tr>

		</table>

</body>
</html>