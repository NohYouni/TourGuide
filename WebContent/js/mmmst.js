function chkLogin() {
	if(document.frm.mmId.value==="") {
		alert("아이디를 입력해주세요");
		document.frm.mmId.focus();
		return false;
	}
	if(document.frm.mmPwd.value==="") {
		alert("비밀번호를 입력해주세요")
		document.frm.mmPwd.focus();
		return false;
	}
	if(document.frm.mmId.value != getElementById('mmId').value) {
		alert("존재하지 않는 아이디입니다.")
		return false;
	}
}

function chkSignUp() {
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
	if(document.frm.mmPwdChk.value==="") {
		alert("비밀번호를 한번 더 입력해주세요")
		frm.mmPwdChk.focus();
		return false;
	}
	var str = document.frm.email.value;
	var atPos = str.indexOf('@'); 
	var atLastPos = str.lastIndexOf('@'); 
	var dotPos = str.indexOf('.'); 
	var spacePos = str.indexOf(' '); 
	var commaPos = str.indexOf(','); 
	var eMailSize = str.length; 
	if(str==="") {
		alert("이메일을 입력해주세요")
		frm.email.focus();
		return false;
	}
	if (atPos > 1 && atPos == atLastPos && dotPos > 3 &&
	    spacePos == -1 && commaPos == -1 && atPos + 1 < dotPos &&
		dotPos + 1 < eMailSize); 
	else { 
		alert("E-mail 형식이 잘못됐습니다.\n\r다시 입력해 주세요");
			document.frm.email.focus();
			return false;
	}
		

	var p1 = document.getElementById('pwd').value;
    var p2 = document.getElementById('pwdChk').value;
      
    if(p1.length < 6) {
	    alert('비밀번호는 6자 이상이어야 합니다.');
        return false;
    }
    if( p1 != p2 ) {
    	alert("비밀번호 불일치");
        return false;
    } else{
        alert("회원가입 완료");
        return true;
    }
}
function chkId() {
		if(document.frm.mmId.value==="") {
		alert("아이디를 입력해주세요");
		document.frm.mmId.focus();
		return;
	}	
	var url = "/checkId?mmId=" + document.frm.mmId.value;
	win = window.open(url, "_brank_1", "top=100, left=150, toolbar=no, menubar=no, scrollbars=yes resizable=no")
	var wid = win.document.body.offsetWidth + 500;
	var hei = win.document.body.offsetHeight + 200;        //30 과 40은 넉넉하게 하려는 임의의 값임
	win.resizeTo(wid,hei);
	
}

function idOk() {
	opener.frm.mmId.value = document.frm.mmId.value;
	opener.frm.checkId.value = document.frm.mmId.value;
	self.close();
}

function pwdChk() {
	var p1 = document.getElementById('pwd').value;
    var p2 = document.getElementById('pwdChk').value;
      
    if(p1.length < 6) {
	    alert('비밀번호는 6자 이상이어야 합니다.');
        return false;
    }
    if( p1 != p2 ) {
    	alert("비밀번호불일치");
        return false;
    } else{
        alert("비밀번호가 일치합니다");
        return true;
    }
}