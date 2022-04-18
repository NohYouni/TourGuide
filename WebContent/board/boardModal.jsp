<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="" id="modal_boardDetail">
	
	<form action="" method="post" id="form_boardMdal">
		<table>
			<tr>
			<td><lable for="rvSb">제목 : </lable></td>
			<td><input type="text" style="width: 400px" name="rvSb"/></td>
			<td><button type="button" class="btn_middle" onclick="reviewModalClose()">X</button></td>
			</tr>
			<tr>
			<td><lable for="rvSb">사진 : </lable></td>
			<td><input type="file" style="display: none" name=""/>
				<input type="text" style="width: 400px"/></td>
			<td><button type="button" class="btn_middle">찾아보기</button></td>
			</tr>
	
			<tr>
			<td colspan="3"><textarea rows="20" cols="100" style="width: 520px"></textarea></td>
			</tr>
			<tr>
			<td colspan="3" style="text-align: center;">
			<button type="button" class="btn_middle btn_primary" >등록</button>&nbsp;&nbsp;
			<button type="button" class="btn_middle" onclick="reviewModalClose()">취소</button></td>
			</tr>
		</table>
	</form>
	</div>