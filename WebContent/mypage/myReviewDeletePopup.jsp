<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 삭제 팝업</title>
<link rel="stylesheet" href="/css/mypage.css">
</head>
<body>
	<table class="popup">
		<tr>
			<td colspan="2">${param.fvNo}리뷰를 삭제하시겠습니까?</td>
		</tr>
		<tr>
			<td><button class="btn_middle btn_primary" onclick="self.close(); opener.location.href='../myReviewDelete?fvNo=${param.fvNo}';">삭제</button></td>
			<td><button class="btn_middle btn_primary" onclick="self.close();">취소</button></td>
		</tr>
	</table>
</body>
</html>