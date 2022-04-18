function zz_popup(fvno){
	var width = 300;
	var height = 100;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/mypage/myZzimPopup.jsp?fvNo='+fvno,'찜삭제하는팝업','width='+width+', height='+height+', top='+top+', left='+left);
}
