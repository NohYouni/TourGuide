<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<link rel="stylesheet" href="/css/mypage.css">


	<meta charset="UTF-8" />
	<title>리뷰 수정 팝업</title>
</head>
<body>
	<form action="/myReviewUpdate?fvNo=${param.fvNo}" method="post"  enctype="multipart/form-data">
		<table class="table">
			<tr>
			<td><label for="rvSub">제목 : </label></td>
			<td><input type="text" style="width: 400px" id="rvSub" name="rvSub"/></td>
			</tr>
			<tr>
			<td><label for="img1">사진 : </label></td>
			<td><input type="file" value="이미지" id="img1" name="img1"/>
			</tr>
			<tr>
			<td colspan="2"><textarea rows="15" cols="80" style="width: 445px" name="rvCnts"></textarea></td>
			</tr>
			<tr>
			<td colspan="2" style="text-align: center;">
			<input type="submit" class="btn_middle btn_primary" value="수정" />&nbsp;&nbsp;
			<input type="button" class="btn_middle btn_primary" value="취소" onclick="self.close();"/></td>
			</tr>
		</table>
	</form>

	</body>
</html>