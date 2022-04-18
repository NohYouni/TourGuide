function out_popup(){
	var width = 300;
	var height = 100;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/signOutPopup.jsp','회원탈퇴','width='+width+', height='+height+', top='+top+', left='+left);
}
