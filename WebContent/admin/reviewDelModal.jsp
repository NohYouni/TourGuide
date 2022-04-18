<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review Delete Modal</title>
<link rel="stylesheet" href="/admin/adminModalCss.css">

</head>
<body>
<h3 class="center">리뷰를 삭제하시겠습니까?</h3>
<div class="reviewRemove">
	<form action="/adminRvDel" method="post" name="frm" onsubmit="return check()">
		<table>
			<tr>
				<td><input type="radio" value="1" name="rsn1"></td>
				<td>욕설</td>
			</tr>
			<tr>
				<td><input type="radio" value="2" name="rsn2"></td>
				<td>음란성 게시글</td>
			</tr>
			<tr>
				<td><input type="radio" value="3" name="rsn3"></td>
				<td>폭력성 게시글</td>
			</tr>
			<tr>
				<td><input type="radio" value="4" name="rsn4"></td>
				<td>괴롭힘</td>
			</tr>
			<tr>
				<td><input type="radio" value="5" name="rsn5"></td>
				<td>도용</td>
			</tr>
			<tr>
				<td><input type="radio" value="6" name="rsn6"></td>
				<td>도배</td>
			</tr>
			<tr>
				<td><input type="radio" value="7" name="rsn7"></td>
				<td>홍보성 게시물</td>
			</tr>
			<tr>
				<td><input type="radio" value="8" name="rsn8"></td>
				<td>기타</td>
			</tr>
		</table><br/>
		<div class="center">
			<input type="hidden" value=${memId } name="memId"/>
			<input type="hidden" value=${fvNo } name="fvNo"/>
			<input class="btn_middle btn_primary" type="submit" value="삭제">
			<input class="btn_middle btn_primary" type="button" onclick="pageClose()" value="취소">
		</div>
	</form>

</div>
<script>
	function pageClose() {
		window.close();
	}
	function check(){
		let ch = false;
		for(var i =0; i<8; i++){
			if(document.frm.elements[i].checked)
				ch = true;									
		}
		
		let winX = 400;
		let winY = 150;
		let x = opener.window.innerWidth/2;
		let y = opener.window.innerHeight/2 - winY/2;
		
		if(ch == false){
			const myWin = window.open('/admin/deleteInfo.jsp','win1','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');
			return false;
		}else{
			return true;
		}
			
		
	}
</script>
</body>
</html>