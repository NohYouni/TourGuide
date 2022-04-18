function rvu_popup(fvno){
	var width = 550;
	var height = 400;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myReviewUpdatePopup.jsp?fvNo='+fvno,'리뷰수정하는팝업','width='+width+', height='+height+', top='+top+', left='+left);

}

