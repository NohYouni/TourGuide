// 전국의 행사 버튼

function festivalBoardLoad(numOfRows, location){
	url = '/festival/main?numOfRows='+numOfRows+'&location='+location;
	
	window.location.href= url;
	let a_header_fv = document.getElementById("a_header_fv");
	a_header_fv.className = "selected_menu"
} 

