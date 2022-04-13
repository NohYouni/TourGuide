function checkLogin() {
	if(document.frm.mmId.value==="") {
		alert("아이디를 입력해주세요")
		frm.mmId.focus();
		return false;
	}
	if(document.frm.mmPwd.value==="") {
		alert("비밀번호를 입력해주세요")
		frm.mmPwd.focus();
		return false;
	}
	return true;
}