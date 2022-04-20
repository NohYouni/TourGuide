//리뷰수정팝업
function rvu_popup(fvno){
	var width = 550;
	var height = 400;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myReviewUpdatePopup.jsp?fvNo='+fvno,'리뷰수정하는팝업','width='+width+', height='+height+', top='+top+', left='+left);

}

//리뷰삭제팝업
function rvd_popup(fvno){
	var width = 350;
	var height = 150;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myReviewDeletePopup.jsp?fvNo='+fvno,'리뷰삭제하는팝업','width='+width+', height='+height+', top='+top+', left='+left);
}
//회원탈퇴팝업
function out_popup(){
	var width = 300;
	var height = 100;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/signOutPopup.jsp','회원탈퇴','width='+width+', height='+height+', top='+top+', left='+left);
}
//찜삭제팝업
function zz_popup(fvno){
	var width = 300;
	var height = 100;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myZzimPopup.jsp?fvNo='+fvno,'찜삭제하는팝업','width='+width+', height='+height+', top='+top+', left='+left);
}




//비밀번호 번경시 6자리 확인
function pwdChange(mmPwd){


	var p1 = document.getElementById("newPwd").value;
	var p2 = document.getElementById('newPwdCheck').value;

	//변경전 비밀번호와 새 비밀번호가 같으면 false를 리턴 
	if(p1 == mmPwd){
		alert("이전 비밀번호와 동일합니다.");
		return false;
	}else{
	//새비밀번호와 새비밀번호 확인이 서로다르면 false를 리턴
    if( p1 != p2 ) {
    	alert("입력한 새 비밀번호가 서로 다릅니다.");
        return false;
    }else{
    // 비밀번호가 6자 미만이면 false를 리턴
	if(p1.length < 6) {
		alert('비밀번호는 6자 이상이어야 합니다.');
	    return false;
	} else{
		//확인용 얼럿
		return true;
	    }
	}
	

}
}

