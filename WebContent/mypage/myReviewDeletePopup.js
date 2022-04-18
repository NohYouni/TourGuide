function rvd_popup(fvno){
	var width = 350;
	var height = 150;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myReviewDeletePopup.jsp?fvNo='+fvno,'리뷰삭제하는팝업','width='+width+', height='+height+', top='+top+', left='+left);
}

